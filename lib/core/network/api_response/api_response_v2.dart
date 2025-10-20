

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/chapter_model/book_info_model.dart';
import '../../../data/models/pagination/pagination_model.dart';

part 'api_response_v2.freezed.dart';
part 'api_response_v2.g.dart';

@Freezed(genericArgumentFactories: true)
class ApiResponseV2<T> with _$ApiResponseV2<T> {
  const factory ApiResponseV2({
    @Default(false) bool success,
    String? message,
    String? bookId,
    int? totalChapters,
    BookInfoModel? book,
    T? chapters,
    T? data,
    @Default('') String error,
    PaginationModel? pagination, // 👈 thêm pagination
  }) = _ApiResponseV2<T>;

  factory ApiResponseV2.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ApiResponseV2FromJson(json, fromJsonT);
}
