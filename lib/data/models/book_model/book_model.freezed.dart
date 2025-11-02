// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookModel _$BookModelFromJson(Map<String, dynamic> json) {
  return _BookModel.fromJson(json);
}

/// @nodoc
mixin _$BookModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  int? get publishYear => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  String? get epubFile => throw _privateConstructorUsedError;
  String? get epubFileName => throw _privateConstructorUsedError;
  int? get epubFileSize => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookModelCopyWith<BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookModelCopyWith<$Res> {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) then) =
      _$BookModelCopyWithImpl<$Res, BookModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? author,
      String? description,
      String? coverImage,
      String? category,
      List<String>? tags,
      int? publishYear,
      String? language,
      int? totalPages,
      String? epubFile,
      String? epubFileName,
      int? epubFileSize,
      String? status,
      String? createdAt,
      String? updatedAt,
      @JsonKey(name: '__v') int? v});
}

/// @nodoc
class _$BookModelCopyWithImpl<$Res, $Val extends BookModel>
    implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? coverImage = freezed,
    Object? category = freezed,
    Object? tags = freezed,
    Object? publishYear = freezed,
    Object? language = freezed,
    Object? totalPages = freezed,
    Object? epubFile = freezed,
    Object? epubFileName = freezed,
    Object? epubFileSize = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      publishYear: freezed == publishYear
          ? _value.publishYear
          : publishYear // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      epubFile: freezed == epubFile
          ? _value.epubFile
          : epubFile // ignore: cast_nullable_to_non_nullable
              as String?,
      epubFileName: freezed == epubFileName
          ? _value.epubFileName
          : epubFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      epubFileSize: freezed == epubFileSize
          ? _value.epubFileSize
          : epubFileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookModelImplCopyWith<$Res>
    implements $BookModelCopyWith<$Res> {
  factory _$$BookModelImplCopyWith(
          _$BookModelImpl value, $Res Function(_$BookModelImpl) then) =
      __$$BookModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? author,
      String? description,
      String? coverImage,
      String? category,
      List<String>? tags,
      int? publishYear,
      String? language,
      int? totalPages,
      String? epubFile,
      String? epubFileName,
      int? epubFileSize,
      String? status,
      String? createdAt,
      String? updatedAt,
      @JsonKey(name: '__v') int? v});
}

/// @nodoc
class __$$BookModelImplCopyWithImpl<$Res>
    extends _$BookModelCopyWithImpl<$Res, _$BookModelImpl>
    implements _$$BookModelImplCopyWith<$Res> {
  __$$BookModelImplCopyWithImpl(
      _$BookModelImpl _value, $Res Function(_$BookModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? coverImage = freezed,
    Object? category = freezed,
    Object? tags = freezed,
    Object? publishYear = freezed,
    Object? language = freezed,
    Object? totalPages = freezed,
    Object? epubFile = freezed,
    Object? epubFileName = freezed,
    Object? epubFileSize = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$BookModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      publishYear: freezed == publishYear
          ? _value.publishYear
          : publishYear // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      epubFile: freezed == epubFile
          ? _value.epubFile
          : epubFile // ignore: cast_nullable_to_non_nullable
              as String?,
      epubFileName: freezed == epubFileName
          ? _value.epubFileName
          : epubFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      epubFileSize: freezed == epubFileSize
          ? _value.epubFileSize
          : epubFileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookModelImpl implements _BookModel {
  const _$BookModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.title,
      this.author,
      this.description,
      this.coverImage,
      this.category,
      final List<String>? tags,
      this.publishYear,
      this.language,
      this.totalPages,
      this.epubFile,
      this.epubFileName,
      this.epubFileSize,
      this.status,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: '__v') this.v})
      : _tags = tags;

  factory _$BookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;
  @override
  final String? author;
  @override
  final String? description;
  @override
  final String? coverImage;
  @override
  final String? category;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? publishYear;
  @override
  final String? language;
  @override
  final int? totalPages;
  @override
  final String? epubFile;
  @override
  final String? epubFileName;
  @override
  final int? epubFileSize;
  @override
  final String? status;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  @JsonKey(name: '__v')
  final int? v;

  @override
  String toString() {
    return 'BookModel(id: $id, title: $title, author: $author, description: $description, coverImage: $coverImage, category: $category, tags: $tags, publishYear: $publishYear, language: $language, totalPages: $totalPages, epubFile: $epubFile, epubFileName: $epubFileName, epubFileSize: $epubFileSize, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.publishYear, publishYear) ||
                other.publishYear == publishYear) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.epubFile, epubFile) ||
                other.epubFile == epubFile) &&
            (identical(other.epubFileName, epubFileName) ||
                other.epubFileName == epubFileName) &&
            (identical(other.epubFileSize, epubFileSize) ||
                other.epubFileSize == epubFileSize) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      author,
      description,
      coverImage,
      category,
      const DeepCollectionEquality().hash(_tags),
      publishYear,
      language,
      totalPages,
      epubFile,
      epubFileName,
      epubFileSize,
      status,
      createdAt,
      updatedAt,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookModelImplCopyWith<_$BookModelImpl> get copyWith =>
      __$$BookModelImplCopyWithImpl<_$BookModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookModelImplToJson(
      this,
    );
  }
}

abstract class _BookModel implements BookModel {
  const factory _BookModel(
      {@JsonKey(name: '_id') final String? id,
      final String? title,
      final String? author,
      final String? description,
      final String? coverImage,
      final String? category,
      final List<String>? tags,
      final int? publishYear,
      final String? language,
      final int? totalPages,
      final String? epubFile,
      final String? epubFileName,
      final int? epubFileSize,
      final String? status,
      final String? createdAt,
      final String? updatedAt,
      @JsonKey(name: '__v') final int? v}) = _$BookModelImpl;

  factory _BookModel.fromJson(Map<String, dynamic> json) =
      _$BookModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  String? get author;
  @override
  String? get description;
  @override
  String? get coverImage;
  @override
  String? get category;
  @override
  List<String>? get tags;
  @override
  int? get publishYear;
  @override
  String? get language;
  @override
  int? get totalPages;
  @override
  String? get epubFile;
  @override
  String? get epubFileName;
  @override
  int? get epubFileSize;
  @override
  String? get status;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(name: '__v')
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$BookModelImplCopyWith<_$BookModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
