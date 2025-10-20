import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_chapter_model.freezed.dart';
part 'list_chapter_model.g.dart';

@freezed
class ListChapterModel with _$ListChapterModel {
  const factory ListChapterModel({
    @JsonKey(name: '_id') String? id,
    required String title,
    required int index,
  }) = _ListChapterModel;

  factory ListChapterModel.fromJson(Map<String, dynamic> json) =>
      _$ListChapterModelFromJson(json);
}
