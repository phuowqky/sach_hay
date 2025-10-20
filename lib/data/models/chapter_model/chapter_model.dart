import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter_model.freezed.dart';
part 'chapter_model.g.dart';

@freezed
class ChapterModel with _$ChapterModel {
  const factory ChapterModel({
    @Default(false) bool success,
    String? bookTitle,
    int? chapterIndex,
    String? chapterTitle,
    String? content,
  }) = _ChapterModel;

  factory ChapterModel.fromJson(Map<String, dynamic> json) =>
      _$ChapterModelFromJson(json);
}