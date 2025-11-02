// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrendingBookModel _$TrendingBookModelFromJson(Map<String, dynamic> json) {
  return _TrendingBookModel.fromJson(json);
}

/// @nodoc
mixin _$TrendingBookModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  double? get averageRating => throw _privateConstructorUsedError;
  int? get totalReviews => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  String? get epubFile => throw _privateConstructorUsedError;
  String? get epubFileName => throw _privateConstructorUsedError;
  int? get epubFileSize => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  int? get publishYear => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingBookModelCopyWith<TrendingBookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingBookModelCopyWith<$Res> {
  factory $TrendingBookModelCopyWith(
          TrendingBookModel value, $Res Function(TrendingBookModel) then) =
      _$TrendingBookModelCopyWithImpl<$Res, TrendingBookModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      double? averageRating,
      int? totalReviews,
      String? title,
      String? author,
      String? description,
      String? coverImage,
      String? epubFile,
      String? epubFileName,
      int? epubFileSize,
      String? category,
      List<String>? tags,
      int? publishYear,
      int? totalPages,
      String? language,
      String? status,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});
}

/// @nodoc
class _$TrendingBookModelCopyWithImpl<$Res, $Val extends TrendingBookModel>
    implements $TrendingBookModelCopyWith<$Res> {
  _$TrendingBookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? averageRating = freezed,
    Object? totalReviews = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? coverImage = freezed,
    Object? epubFile = freezed,
    Object? epubFileName = freezed,
    Object? epubFileSize = freezed,
    Object? category = freezed,
    Object? tags = freezed,
    Object? publishYear = freezed,
    Object? totalPages = freezed,
    Object? language = freezed,
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
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      totalReviews: freezed == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int?,
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
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingBookModelImplCopyWith<$Res>
    implements $TrendingBookModelCopyWith<$Res> {
  factory _$$TrendingBookModelImplCopyWith(_$TrendingBookModelImpl value,
          $Res Function(_$TrendingBookModelImpl) then) =
      __$$TrendingBookModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      double? averageRating,
      int? totalReviews,
      String? title,
      String? author,
      String? description,
      String? coverImage,
      String? epubFile,
      String? epubFileName,
      int? epubFileSize,
      String? category,
      List<String>? tags,
      int? publishYear,
      int? totalPages,
      String? language,
      String? status,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});
}

/// @nodoc
class __$$TrendingBookModelImplCopyWithImpl<$Res>
    extends _$TrendingBookModelCopyWithImpl<$Res, _$TrendingBookModelImpl>
    implements _$$TrendingBookModelImplCopyWith<$Res> {
  __$$TrendingBookModelImplCopyWithImpl(_$TrendingBookModelImpl _value,
      $Res Function(_$TrendingBookModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? averageRating = freezed,
    Object? totalReviews = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? coverImage = freezed,
    Object? epubFile = freezed,
    Object? epubFileName = freezed,
    Object? epubFileSize = freezed,
    Object? category = freezed,
    Object? tags = freezed,
    Object? publishYear = freezed,
    Object? totalPages = freezed,
    Object? language = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$TrendingBookModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      totalReviews: freezed == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int?,
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
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingBookModelImpl implements _TrendingBookModel {
  const _$TrendingBookModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.averageRating,
      this.totalReviews,
      this.title,
      this.author,
      this.description,
      this.coverImage,
      this.epubFile,
      this.epubFileName,
      this.epubFileSize,
      this.category,
      final List<String>? tags,
      this.publishYear,
      this.totalPages,
      this.language,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.v})
      : _tags = tags;

  factory _$TrendingBookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingBookModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final double? averageRating;
  @override
  final int? totalReviews;
  @override
  final String? title;
  @override
  final String? author;
  @override
  final String? description;
  @override
  final String? coverImage;
  @override
  final String? epubFile;
  @override
  final String? epubFileName;
  @override
  final int? epubFileSize;
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
  final int? totalPages;
  @override
  final String? language;
  @override
  final String? status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? v;

  @override
  String toString() {
    return 'TrendingBookModel(id: $id, averageRating: $averageRating, totalReviews: $totalReviews, title: $title, author: $author, description: $description, coverImage: $coverImage, epubFile: $epubFile, epubFileName: $epubFileName, epubFileSize: $epubFileSize, category: $category, tags: $tags, publishYear: $publishYear, totalPages: $totalPages, language: $language, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingBookModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.epubFile, epubFile) ||
                other.epubFile == epubFile) &&
            (identical(other.epubFileName, epubFileName) ||
                other.epubFileName == epubFileName) &&
            (identical(other.epubFileSize, epubFileSize) ||
                other.epubFileSize == epubFileSize) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.publishYear, publishYear) ||
                other.publishYear == publishYear) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        averageRating,
        totalReviews,
        title,
        author,
        description,
        coverImage,
        epubFile,
        epubFileName,
        epubFileSize,
        category,
        const DeepCollectionEquality().hash(_tags),
        publishYear,
        totalPages,
        language,
        status,
        createdAt,
        updatedAt,
        v
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingBookModelImplCopyWith<_$TrendingBookModelImpl> get copyWith =>
      __$$TrendingBookModelImplCopyWithImpl<_$TrendingBookModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingBookModelImplToJson(
      this,
    );
  }
}

abstract class _TrendingBookModel implements TrendingBookModel {
  const factory _TrendingBookModel(
      {@JsonKey(name: '_id') final String? id,
      final double? averageRating,
      final int? totalReviews,
      final String? title,
      final String? author,
      final String? description,
      final String? coverImage,
      final String? epubFile,
      final String? epubFileName,
      final int? epubFileSize,
      final String? category,
      final List<String>? tags,
      final int? publishYear,
      final int? totalPages,
      final String? language,
      final String? status,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? v}) = _$TrendingBookModelImpl;

  factory _TrendingBookModel.fromJson(Map<String, dynamic> json) =
      _$TrendingBookModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  double? get averageRating;
  @override
  int? get totalReviews;
  @override
  String? get title;
  @override
  String? get author;
  @override
  String? get description;
  @override
  String? get coverImage;
  @override
  String? get epubFile;
  @override
  String? get epubFileName;
  @override
  int? get epubFileSize;
  @override
  String? get category;
  @override
  List<String>? get tags;
  @override
  int? get publishYear;
  @override
  int? get totalPages;
  @override
  String? get language;
  @override
  String? get status;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$TrendingBookModelImplCopyWith<_$TrendingBookModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
