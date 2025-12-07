// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResponseModelImpl _$$SearchResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResponseModelImpl(
      books: (json['books'] as List<dynamic>)
          .map((e) => BookModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchResponseModelImplToJson(
        _$SearchResponseModelImpl instance) =>
    <String, dynamic>{
      'books': instance.books,
    };
