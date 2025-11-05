// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookmarkModel _$BookmarkModelFromJson(Map<String, dynamic> json) {
  return _BookmarkModel.fromJson(json);
}

/// @nodoc
mixin _$BookmarkModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  BookInfo? get bookId => throw _privateConstructorUsedError;
  String? get progress => throw _privateConstructorUsedError;
  int? get chapterIndex => throw _privateConstructorUsedError;
  int? get position => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarkModelCopyWith<BookmarkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkModelCopyWith<$Res> {
  factory $BookmarkModelCopyWith(
          BookmarkModel value, $Res Function(BookmarkModel) then) =
      _$BookmarkModelCopyWithImpl<$Res, BookmarkModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? userId,
      BookInfo? bookId,
      String? progress,
      int? chapterIndex,
      int? position,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: '__v') int? v});

  $BookInfoCopyWith<$Res>? get bookId;
}

/// @nodoc
class _$BookmarkModelCopyWithImpl<$Res, $Val extends BookmarkModel>
    implements $BookmarkModelCopyWith<$Res> {
  _$BookmarkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? bookId = freezed,
    Object? progress = freezed,
    Object? chapterIndex = freezed,
    Object? position = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookInfo?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterIndex: freezed == chapterIndex
          ? _value.chapterIndex
          : chapterIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
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

  @override
  @pragma('vm:prefer-inline')
  $BookInfoCopyWith<$Res>? get bookId {
    if (_value.bookId == null) {
      return null;
    }

    return $BookInfoCopyWith<$Res>(_value.bookId!, (value) {
      return _then(_value.copyWith(bookId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookmarkModelImplCopyWith<$Res>
    implements $BookmarkModelCopyWith<$Res> {
  factory _$$BookmarkModelImplCopyWith(
          _$BookmarkModelImpl value, $Res Function(_$BookmarkModelImpl) then) =
      __$$BookmarkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? userId,
      BookInfo? bookId,
      String? progress,
      int? chapterIndex,
      int? position,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: '__v') int? v});

  @override
  $BookInfoCopyWith<$Res>? get bookId;
}

/// @nodoc
class __$$BookmarkModelImplCopyWithImpl<$Res>
    extends _$BookmarkModelCopyWithImpl<$Res, _$BookmarkModelImpl>
    implements _$$BookmarkModelImplCopyWith<$Res> {
  __$$BookmarkModelImplCopyWithImpl(
      _$BookmarkModelImpl _value, $Res Function(_$BookmarkModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? bookId = freezed,
    Object? progress = freezed,
    Object? chapterIndex = freezed,
    Object? position = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$BookmarkModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as BookInfo?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterIndex: freezed == chapterIndex
          ? _value.chapterIndex
          : chapterIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$BookmarkModelImpl implements _BookmarkModel {
  const _$BookmarkModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.userId,
      this.bookId,
      this.progress,
      this.chapterIndex,
      this.position,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: '__v') this.v});

  factory _$BookmarkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarkModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? userId;
  @override
  final BookInfo? bookId;
  @override
  final String? progress;
  @override
  final int? chapterIndex;
  @override
  final int? position;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey(name: '__v')
  final int? v;

  @override
  String toString() {
    return 'BookmarkModel(id: $id, userId: $userId, bookId: $bookId, progress: $progress, chapterIndex: $chapterIndex, position: $position, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.chapterIndex, chapterIndex) ||
                other.chapterIndex == chapterIndex) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, bookId, progress,
      chapterIndex, position, createdAt, updatedAt, v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkModelImplCopyWith<_$BookmarkModelImpl> get copyWith =>
      __$$BookmarkModelImplCopyWithImpl<_$BookmarkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarkModelImplToJson(
      this,
    );
  }
}

abstract class _BookmarkModel implements BookmarkModel {
  const factory _BookmarkModel(
      {@JsonKey(name: '_id') final String? id,
      final String? userId,
      final BookInfo? bookId,
      final String? progress,
      final int? chapterIndex,
      final int? position,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      @JsonKey(name: '__v') final int? v}) = _$BookmarkModelImpl;

  factory _BookmarkModel.fromJson(Map<String, dynamic> json) =
      _$BookmarkModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get userId;
  @override
  BookInfo? get bookId;
  @override
  String? get progress;
  @override
  int? get chapterIndex;
  @override
  int? get position;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(name: '__v')
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$BookmarkModelImplCopyWith<_$BookmarkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookInfo _$BookInfoFromJson(Map<String, dynamic> json) {
  return _BookInfo.fromJson(json);
}

/// @nodoc
mixin _$BookInfo {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookInfoCopyWith<BookInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookInfoCopyWith<$Res> {
  factory $BookInfoCopyWith(BookInfo value, $Res Function(BookInfo) then) =
      _$BookInfoCopyWithImpl<$Res, BookInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? coverImage,
      String? author});
}

/// @nodoc
class _$BookInfoCopyWithImpl<$Res, $Val extends BookInfo>
    implements $BookInfoCopyWith<$Res> {
  _$BookInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? coverImage = freezed,
    Object? author = freezed,
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
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookInfoImplCopyWith<$Res>
    implements $BookInfoCopyWith<$Res> {
  factory _$$BookInfoImplCopyWith(
          _$BookInfoImpl value, $Res Function(_$BookInfoImpl) then) =
      __$$BookInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? coverImage,
      String? author});
}

/// @nodoc
class __$$BookInfoImplCopyWithImpl<$Res>
    extends _$BookInfoCopyWithImpl<$Res, _$BookInfoImpl>
    implements _$$BookInfoImplCopyWith<$Res> {
  __$$BookInfoImplCopyWithImpl(
      _$BookInfoImpl _value, $Res Function(_$BookInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? coverImage = freezed,
    Object? author = freezed,
  }) {
    return _then(_$BookInfoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookInfoImpl implements _BookInfo {
  const _$BookInfoImpl(
      {@JsonKey(name: '_id') this.id,
      this.title,
      this.coverImage,
      this.author});

  factory _$BookInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookInfoImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;
  @override
  final String? coverImage;
  @override
  final String? author;

  @override
  String toString() {
    return 'BookInfo(id: $id, title: $title, coverImage: $coverImage, author: $author)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, coverImage, author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookInfoImplCopyWith<_$BookInfoImpl> get copyWith =>
      __$$BookInfoImplCopyWithImpl<_$BookInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookInfoImplToJson(
      this,
    );
  }
}

abstract class _BookInfo implements BookInfo {
  const factory _BookInfo(
      {@JsonKey(name: '_id') final String? id,
      final String? title,
      final String? coverImage,
      final String? author}) = _$BookInfoImpl;

  factory _BookInfo.fromJson(Map<String, dynamic> json) =
      _$BookInfoImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  String? get coverImage;
  @override
  String? get author;
  @override
  @JsonKey(ignore: true)
  _$$BookInfoImplCopyWith<_$BookInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
