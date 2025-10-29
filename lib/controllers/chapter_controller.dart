import 'dart:developer';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:sach_hay/core/di/common_features.dart';
import 'package:sach_hay/core/network/api_service/api_service.dart';
import 'package:sach_hay/data/models/chapter_model/chapter_model.dart';
import 'package:sach_hay/data/models/chapter_model/list_chapter_model.dart';
import 'package:sach_hay/data/storage/user_storage.dart';

class ChappterController extends GetxController {
  final apiService = getIt<ApiService>();
  final isLoading = false.obs;
  var chapters = <ListChapterModel>[].obs;


  @override
  void onInit() {
    super.onInit();
    final bookId = Get.arguments?['bookId']; // Nhận bookId từ màn trước
    if (bookId != null) {
      getChapters();
    }
  }

  Future<void> getChapters() async {
    isLoading.value = true;
    final bookId = await UserStorage.getBookId();

    try {
      final response = await apiService.getChapters(bookId);
      if (response.success) {
        log("getChapters successfully ${response.data}");
        // final bookDetail = BookModel.fromJson(response.data!.toJson());
        // final chaptter = ChapterModel.fromJson(response.data!.toJson());
        final chapters = response.chapters!;
        this.chapters.assignAll(chapters);
      } else {
        log("getChapters failed: ${response.message}");
      }
    } catch (e, stack) {
      print("Error marking chapter as read: $e, stack: $stack");
    } finally {
      isLoading.value = false;
    }
  }
}
