// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'book_model.freezed.dart';
// part 'book_model.g.dart';
//
// @freezed
// class BookModel with _$BookModel {
//   const factory BookModel({
//     @JsonKey(name: '_id') String? id,
//     String? title,
//     String? author,
//     String? description,
//     String? coverImage,
//     String? category,
//     List<String>? tags,
//     int? publishYear,
//     String? language,
//     int? totalPages,
//     String? epubFile,
//     String? epubFileName,
//     int? epubFileSize,
//     String? status,
//     String? createdAt,
//     String? updatedAt,
//     @JsonKey(name: '__v') int? v,
//   }) = _BookModel;
//
//   factory BookModel.fromJson(Map<String, dynamic> json) =>
//       _$BookModelFromJson(json);
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_request_model.freezed.dart';
part 'message_request_model.g.dart';

@freezed
class MessageRequestModel with _$MessageRequestModel {
  const factory MessageRequestModel({
    required String message,
  }) = _MessageRequestModel;

  factory MessageRequestModel.fromJson(Map<String, dynamic> json) =>
      _$MessageRequestModelFromJson(json);
}