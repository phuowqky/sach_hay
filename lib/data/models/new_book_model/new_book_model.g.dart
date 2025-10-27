// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewBookModelImpl _$$NewBookModelImplFromJson(Map<String, dynamic> json) =>
    _$NewBookModelImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      author: json['author'] as String?,
      description: json['description'] as String?,
      category: json['category'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$NewBookModelImplToJson(_$NewBookModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'category': instance.category,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
