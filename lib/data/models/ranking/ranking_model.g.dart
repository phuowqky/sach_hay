// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RankingModelImpl _$$RankingModelImplFromJson(Map<String, dynamic> json) =>
    _$RankingModelImpl(
      reviewCount: (json['reviewCount'] as num?)?.toInt(),
      bookId: json['bookId'] as String?,
      title: json['title'] as String?,
      author: json['author'] as String?,
      category: json['category'] as String?,
      coverImage: json['coverImage'] as String?,
      avgRating: (json['avgRating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$RankingModelImplToJson(_$RankingModelImpl instance) =>
    <String, dynamic>{
      'reviewCount': instance.reviewCount,
      'bookId': instance.bookId,
      'title': instance.title,
      'author': instance.author,
      'category': instance.category,
      'coverImage': instance.coverImage,
      'avgRating': instance.avgRating,
    };
