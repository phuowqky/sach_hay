// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RandomBookModelImpl _$$RandomBookModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RandomBookModelImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      author: json['author'] as String?,
      description: json['description'] as String?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$$RandomBookModelImplToJson(
        _$RandomBookModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'category': instance.category,
    };
