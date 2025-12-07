import 'package:freezed_annotation/freezed_annotation.dart';

import '../book_model/book_model.dart';

part 'search_response_model.freezed.dart';
part 'search_response_model.g.dart';

@freezed
class SearchResponseModel with _$SearchResponseModel {
  const factory SearchResponseModel({
    required List<BookModel> books,
  }) = _SearchResponseModel;

  factory SearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseModelFromJson(json);
}
