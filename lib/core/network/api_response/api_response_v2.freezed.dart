// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_v2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiResponseV2<T> _$ApiResponseV2FromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ApiResponseV2<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ApiResponseV2<T> {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get bookId => throw _privateConstructorUsedError;
  int? get totalChapters => throw _privateConstructorUsedError;
  BookInfoModel? get book => throw _privateConstructorUsedError;
  T? get chapters => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  PaginationModel? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseV2CopyWith<T, ApiResponseV2<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseV2CopyWith<T, $Res> {
  factory $ApiResponseV2CopyWith(
          ApiResponseV2<T> value, $Res Function(ApiResponseV2<T>) then) =
      _$ApiResponseV2CopyWithImpl<T, $Res, ApiResponseV2<T>>;
  @useResult
  $Res call(
      {bool success,
      String? message,
      String? bookId,
      int? totalChapters,
      BookInfoModel? book,
      T? chapters,
      T? data,
      String error,
      PaginationModel? pagination});

  $BookInfoModelCopyWith<$Res>? get book;
  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$ApiResponseV2CopyWithImpl<T, $Res, $Val extends ApiResponseV2<T>>
    implements $ApiResponseV2CopyWith<T, $Res> {
  _$ApiResponseV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? bookId = freezed,
    Object? totalChapters = freezed,
    Object? book = freezed,
    Object? chapters = freezed,
    Object? data = freezed,
    Object? error = null,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      totalChapters: freezed == totalChapters
          ? _value.totalChapters
          : totalChapters // ignore: cast_nullable_to_non_nullable
              as int?,
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookInfoModel?,
      chapters: freezed == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as T?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookInfoModelCopyWith<$Res>? get book {
    if (_value.book == null) {
      return null;
    }

    return $BookInfoModelCopyWith<$Res>(_value.book!, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationModelCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationModelCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiResponseV2ImplCopyWith<T, $Res>
    implements $ApiResponseV2CopyWith<T, $Res> {
  factory _$$ApiResponseV2ImplCopyWith(_$ApiResponseV2Impl<T> value,
          $Res Function(_$ApiResponseV2Impl<T>) then) =
      __$$ApiResponseV2ImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {bool success,
      String? message,
      String? bookId,
      int? totalChapters,
      BookInfoModel? book,
      T? chapters,
      T? data,
      String error,
      PaginationModel? pagination});

  @override
  $BookInfoModelCopyWith<$Res>? get book;
  @override
  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$ApiResponseV2ImplCopyWithImpl<T, $Res>
    extends _$ApiResponseV2CopyWithImpl<T, $Res, _$ApiResponseV2Impl<T>>
    implements _$$ApiResponseV2ImplCopyWith<T, $Res> {
  __$$ApiResponseV2ImplCopyWithImpl(_$ApiResponseV2Impl<T> _value,
      $Res Function(_$ApiResponseV2Impl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? bookId = freezed,
    Object? totalChapters = freezed,
    Object? book = freezed,
    Object? chapters = freezed,
    Object? data = freezed,
    Object? error = null,
    Object? pagination = freezed,
  }) {
    return _then(_$ApiResponseV2Impl<T>(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      totalChapters: freezed == totalChapters
          ? _value.totalChapters
          : totalChapters // ignore: cast_nullable_to_non_nullable
              as int?,
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookInfoModel?,
      chapters: freezed == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as T?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResponseV2Impl<T> implements _ApiResponseV2<T> {
  const _$ApiResponseV2Impl(
      {this.success = false,
      this.message,
      this.bookId,
      this.totalChapters,
      this.book,
      this.chapters,
      this.data,
      this.error = '',
      this.pagination});

  factory _$ApiResponseV2Impl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseV2ImplFromJson(json, fromJsonT);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;
  @override
  final String? bookId;
  @override
  final int? totalChapters;
  @override
  final BookInfoModel? book;
  @override
  final T? chapters;
  @override
  final T? data;
  @override
  @JsonKey()
  final String error;
  @override
  final PaginationModel? pagination;

  @override
  String toString() {
    return 'ApiResponseV2<$T>(success: $success, message: $message, bookId: $bookId, totalChapters: $totalChapters, book: $book, chapters: $chapters, data: $data, error: $error, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseV2Impl<T> &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.totalChapters, totalChapters) ||
                other.totalChapters == totalChapters) &&
            (identical(other.book, book) || other.book == book) &&
            const DeepCollectionEquality().equals(other.chapters, chapters) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      message,
      bookId,
      totalChapters,
      book,
      const DeepCollectionEquality().hash(chapters),
      const DeepCollectionEquality().hash(data),
      error,
      pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseV2ImplCopyWith<T, _$ApiResponseV2Impl<T>> get copyWith =>
      __$$ApiResponseV2ImplCopyWithImpl<T, _$ApiResponseV2Impl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResponseV2ImplToJson<T>(this, toJsonT);
  }
}

abstract class _ApiResponseV2<T> implements ApiResponseV2<T> {
  const factory _ApiResponseV2(
      {final bool success,
      final String? message,
      final String? bookId,
      final int? totalChapters,
      final BookInfoModel? book,
      final T? chapters,
      final T? data,
      final String error,
      final PaginationModel? pagination}) = _$ApiResponseV2Impl<T>;

  factory _ApiResponseV2.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResponseV2Impl<T>.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  String? get bookId;
  @override
  int? get totalChapters;
  @override
  BookInfoModel? get book;
  @override
  T? get chapters;
  @override
  T? get data;
  @override
  String get error;
  @override
  PaginationModel? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$ApiResponseV2ImplCopyWith<T, _$ApiResponseV2Impl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
