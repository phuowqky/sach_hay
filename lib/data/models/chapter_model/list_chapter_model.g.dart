// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_chapter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListChapterModelImpl _$$ListChapterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ListChapterModelImpl(
      id: json['_id'] as String?,
      title: json['title'] as String,
      index: (json['index'] as num).toInt(),
    );

Map<String, dynamic> _$$ListChapterModelImplToJson(
        _$ListChapterModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'index': instance.index,
    };
