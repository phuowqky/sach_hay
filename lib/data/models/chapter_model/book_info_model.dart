import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_info_model.freezed.dart';
part 'book_info_model.g.dart';

@freezed
class BookInfoModel with _$BookInfoModel {
  const factory BookInfoModel({
    String? id,
    String? title,
    String? author,
  }) = _BookInfoModel;

  factory BookInfoModel.fromJson(Map<String, dynamic> json) =>
      _$BookInfoModelFromJson(json);
}
