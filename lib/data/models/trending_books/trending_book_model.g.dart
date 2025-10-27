// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrendingBookModelImpl _$$TrendingBookModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TrendingBookModelImpl(
      id: json['_id'] as String?,
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      totalReviews: (json['totalReviews'] as num?)?.toInt(),
      title: json['title'] as String?,
      author: json['author'] as String?,
      description: json['description'] as String?,
      coverImage: json['coverImage'] as String?,
      epubFile: json['epubFile'] as String?,
      epubFileName: json['epubFileName'] as String?,
      epubFileSize: (json['epubFileSize'] as num?)?.toInt(),
      category: json['category'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      publishYear: (json['publishYear'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      language: json['language'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TrendingBookModelImplToJson(
        _$TrendingBookModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'averageRating': instance.averageRating,
      'totalReviews': instance.totalReviews,
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'coverImage': instance.coverImage,
      'epubFile': instance.epubFile,
      'epubFileName': instance.epubFileName,
      'epubFileSize': instance.epubFileSize,
      'category': instance.category,
      'tags': instance.tags,
      'publishYear': instance.publishYear,
      'totalPages': instance.totalPages,
      'language': instance.language,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
    };
