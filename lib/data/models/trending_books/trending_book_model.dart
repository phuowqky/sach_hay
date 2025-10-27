import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_book_model.freezed.dart';
part 'trending_book_model.g.dart';

@freezed
class TrendingBookModel with _$TrendingBookModel {
  const factory TrendingBookModel({
    @JsonKey(name: '_id') String? id,
    double? averageRating,
    int? totalReviews,
    String? title,
    String? author,
    String? description,
    String? coverImage,
    String? epubFile,
    String? epubFileName,
    int? epubFileSize,
    String? category,
    List<String>? tags,
    int? publishYear,
    int? totalPages,
    String? language,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v, // map cho "__v"
  }) = _TrendingBookModel;

  factory TrendingBookModel.fromJson(Map<String, dynamic> json) =>
      _$TrendingBookModelFromJson(json);
}
