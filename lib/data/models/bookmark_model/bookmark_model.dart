import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sach_hay/data/models/book_model/book_model.dart';

part 'bookmark_model.freezed.dart';
part 'bookmark_model.g.dart';

@freezed
class BookmarkModel with _$BookmarkModel {
  const factory BookmarkModel({
    @JsonKey(name: '_id') String? id,
    String? userId,
    BookInfo? bookId,
    String? progress,
    bool? isCompleted,
    int? chapterIndex,
    int? position,
    DateTime? createdAt,
    DateTime? updatedAt,
    BookModel? book,
    @JsonKey(name: '__v') int? v,
  }) = _BookmarkModel;

  factory BookmarkModel.fromJson(Map<String, dynamic> json) =>
      _$BookmarkModelFromJson(json);
}

@freezed
class BookInfo with _$BookInfo {
  const factory BookInfo({
    @JsonKey(name: '_id') String? id,
    String? title,
    String? coverImage,
    String? author,
  }) = _BookInfo;

  factory BookInfo.fromJson(Map<String, dynamic> json) =>
      _$BookInfoFromJson(json);
}
