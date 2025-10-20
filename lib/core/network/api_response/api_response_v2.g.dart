// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseV2Impl<T> _$$ApiResponseV2ImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseV2Impl<T>(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      bookId: json['bookId'] as String?,
      totalChapters: (json['totalChapters'] as num?)?.toInt(),
      book: json['book'] == null
          ? null
          : BookInfoModel.fromJson(json['book'] as Map<String, dynamic>),
      chapters: _$nullableGenericFromJson(json['chapters'], fromJsonT),
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      error: json['error'] as String? ?? '',
      pagination: json['pagination'] == null
          ? null
          : PaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiResponseV2ImplToJson<T>(
  _$ApiResponseV2Impl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'bookId': instance.bookId,
      'totalChapters': instance.totalChapters,
      'book': instance.book,
      'chapters': _$nullableGenericToJson(instance.chapters, toJsonT),
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'error': instance.error,
      'pagination': instance.pagination,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
