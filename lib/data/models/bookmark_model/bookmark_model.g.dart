// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookmarkModelImpl _$$BookmarkModelImplFromJson(Map<String, dynamic> json) =>
    _$BookmarkModelImpl(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      bookId: json['bookId'] == null
          ? null
          : BookInfo.fromJson(json['bookId'] as Map<String, dynamic>),
      progress: json['progress'] as String?,
      isCompleted: json['isCompleted'] as bool?,
      chapterIndex: (json['chapterIndex'] as num?)?.toInt(),
      position: (json['position'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      book: json['book'] == null
          ? null
          : BookModel.fromJson(json['book'] as Map<String, dynamic>),
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BookmarkModelImplToJson(_$BookmarkModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'bookId': instance.bookId,
      'progress': instance.progress,
      'isCompleted': instance.isCompleted,
      'chapterIndex': instance.chapterIndex,
      'position': instance.position,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'book': instance.book,
      '__v': instance.v,
    };

_$BookInfoImpl _$$BookInfoImplFromJson(Map<String, dynamic> json) =>
    _$BookInfoImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      coverImage: json['coverImage'] as String?,
      author: json['author'] as String?,
    );

Map<String, dynamic> _$$BookInfoImplToJson(_$BookInfoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'coverImage': instance.coverImage,
      'author': instance.author,
    };
