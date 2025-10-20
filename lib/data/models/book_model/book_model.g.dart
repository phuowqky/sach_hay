// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookModelImpl _$$BookModelImplFromJson(Map<String, dynamic> json) =>
    _$BookModelImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      author: json['author'] as String?,
      description: json['description'] as String?,
      coverImage: json['coverImage'] as String?,
      category: json['category'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      publishYear: (json['publishYear'] as num?)?.toInt(),
      language: json['language'] as String?,
      totalPages: (json['totalPages'] as num?)?.toInt(),
      epubFile: json['epubFile'] as String?,
      epubFileName: json['epubFileName'] as String?,
      epubFileSize: (json['epubFileSize'] as num?)?.toInt(),
      status: json['status'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BookModelImplToJson(_$BookModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'coverImage': instance.coverImage,
      'category': instance.category,
      'tags': instance.tags,
      'publishYear': instance.publishYear,
      'language': instance.language,
      'totalPages': instance.totalPages,
      'epubFile': instance.epubFile,
      'epubFileName': instance.epubFileName,
      'epubFileSize': instance.epubFileSize,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.v,
    };
