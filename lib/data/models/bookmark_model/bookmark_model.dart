import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark_model.freezed.dart';
part 'bookmark_model.g.dart';

@freezed
class BookmarkModel with _$BookmarkModel {
  const factory BookmarkModel({
    @JsonKey(name: '_id') String? id,
    String? userId,
    String? bookId,
    int? chapterIndex,
    int? position,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? v,
  }) = _BookmarkModel;

  factory BookmarkModel.fromJson(Map<String, dynamic> json) =>
      _$BookmarkModelFromJson(json);
}
