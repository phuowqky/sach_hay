import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_book_model.freezed.dart';
part 'new_book_model.g.dart';

@freezed
class NewBookModel with _$NewBookModel {
  const factory NewBookModel({
    @JsonKey(name: '_id') String? id,
    String? title,
    String? author,
    String? description,
    String? category,
    DateTime? createdAt,
  }) = _NewBookModel;

  factory NewBookModel.fromJson(Map<String, dynamic> json) =>
      _$NewBookModelFromJson(json);
}
