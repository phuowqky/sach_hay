// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterModelImpl _$$ChapterModelImplFromJson(Map<String, dynamic> json) =>
    _$ChapterModelImpl(
      success: json['success'] as bool? ?? false,
      bookTitle: json['bookTitle'] as String?,
      chapterIndex: (json['chapterIndex'] as num?)?.toInt(),
      chapterTitle: json['chapterTitle'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$ChapterModelImplToJson(_$ChapterModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'bookTitle': instance.bookTitle,
      'chapterIndex': instance.chapterIndex,
      'chapterTitle': instance.chapterTitle,
      'content': instance.content,
    };
