import 'package:shared_preferences/shared_preferences.dart';

class BookStorage {
  static const String _indexSelected = 'selected_index';

  /// Lưu index đã chọn
  static Future<void> saveSelectIndexChapter(int value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_indexSelected, value);
  }

  /// Lấy index đã chọn (mặc định là 0 nếu chưa có)
  static Future<int> getSelectIndexChapter() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_indexSelected) ?? 0;
  }

  /// Xóa index đã lưu
  static Future<void> clearSelectIndexChapter() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_indexSelected);
  }
}