import 'package:freezed_annotation/freezed_annotation.dart';

part 'random_book_model.freezed.dart';
part 'random_book_model.g.dart';

@freezed
class RandomBookModel with _$RandomBookModel {
  const factory RandomBookModel({
    @JsonKey(name: '_id') String? id,
    String? title,
    String? author,
    String? description,
    String? category,
  }) = _RandomBookModel;

  factory RandomBookModel.fromJson(Map<String, dynamic> json) =>
      _$RandomBookModelFromJson(json);
}
