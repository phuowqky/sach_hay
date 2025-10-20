// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChapterModel _$ChapterModelFromJson(Map<String, dynamic> json) {
  return _ChapterModel.fromJson(json);
}

/// @nodoc
mixin _$ChapterModel {
  bool get success => throw _privateConstructorUsedError;
  String? get bookTitle => throw _privateConstructorUsedError;
  int? get chapterIndex => throw _privateConstructorUsedError;
  String? get chapterTitle => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  /// Serializes this ChapterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChapterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterModelCopyWith<ChapterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterModelCopyWith<$Res> {
  factory $ChapterModelCopyWith(
          ChapterModel value, $Res Function(ChapterModel) then) =
      _$ChapterModelCopyWithImpl<$Res, ChapterModel>;
  @useResult
  $Res call(
      {bool success,
      String? bookTitle,
      int? chapterIndex,
      String? chapterTitle,
      String? content});
}

/// @nodoc
class _$ChapterModelCopyWithImpl<$Res, $Val extends ChapterModel>
    implements $ChapterModelCopyWith<$Res> {
  _$ChapterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? bookTitle = freezed,
    Object? chapterIndex = freezed,
    Object? chapterTitle = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      bookTitle: freezed == bookTitle
          ? _value.bookTitle
          : bookTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterIndex: freezed == chapterIndex
          ? _value.chapterIndex
          : chapterIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      chapterTitle: freezed == chapterTitle
          ? _value.chapterTitle
          : chapterTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterModelImplCopyWith<$Res>
    implements $ChapterModelCopyWith<$Res> {
  factory _$$ChapterModelImplCopyWith(
          _$ChapterModelImpl value, $Res Function(_$ChapterModelImpl) then) =
      __$$ChapterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success,
      String? bookTitle,
      int? chapterIndex,
      String? chapterTitle,
      String? content});
}

/// @nodoc
class __$$ChapterModelImplCopyWithImpl<$Res>
    extends _$ChapterModelCopyWithImpl<$Res, _$ChapterModelImpl>
    implements _$$ChapterModelImplCopyWith<$Res> {
  __$$ChapterModelImplCopyWithImpl(
      _$ChapterModelImpl _value, $Res Function(_$ChapterModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChapterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? bookTitle = freezed,
    Object? chapterIndex = freezed,
    Object? chapterTitle = freezed,
    Object? content = freezed,
  }) {
    return _then(_$ChapterModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      bookTitle: freezed == bookTitle
          ? _value.bookTitle
          : bookTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterIndex: freezed == chapterIndex
          ? _value.chapterIndex
          : chapterIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      chapterTitle: freezed == chapterTitle
          ? _value.chapterTitle
          : chapterTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterModelImpl implements _ChapterModel {
  const _$ChapterModelImpl(
      {this.success = false,
      this.bookTitle,
      this.chapterIndex,
      this.chapterTitle,
      this.content});

  factory _$ChapterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterModelImplFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? bookTitle;
  @override
  final int? chapterIndex;
  @override
  final String? chapterTitle;
  @override
  final String? content;

  @override
  String toString() {
    return 'ChapterModel(success: $success, bookTitle: $bookTitle, chapterIndex: $chapterIndex, chapterTitle: $chapterTitle, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.bookTitle, bookTitle) ||
                other.bookTitle == bookTitle) &&
            (identical(other.chapterIndex, chapterIndex) ||
                other.chapterIndex == chapterIndex) &&
            (identical(other.chapterTitle, chapterTitle) ||
                other.chapterTitle == chapterTitle) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, bookTitle, chapterIndex, chapterTitle, content);

  /// Create a copy of ChapterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterModelImplCopyWith<_$ChapterModelImpl> get copyWith =>
      __$$ChapterModelImplCopyWithImpl<_$ChapterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterModelImplToJson(
      this,
    );
  }
}

abstract class _ChapterModel implements ChapterModel {
  const factory _ChapterModel(
      {final bool success,
      final String? bookTitle,
      final int? chapterIndex,
      final String? chapterTitle,
      final String? content}) = _$ChapterModelImpl;

  factory _ChapterModel.fromJson(Map<String, dynamic> json) =
      _$ChapterModelImpl.fromJson;

  @override
  bool get success;
  @override
  String? get bookTitle;
  @override
  int? get chapterIndex;
  @override
  String? get chapterTitle;
  @override
  String? get content;

  /// Create a copy of ChapterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterModelImplCopyWith<_$ChapterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
