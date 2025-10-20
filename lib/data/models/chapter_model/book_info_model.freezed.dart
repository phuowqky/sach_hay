// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookInfoModel _$BookInfoModelFromJson(Map<String, dynamic> json) {
  return _BookInfoModel.fromJson(json);
}

/// @nodoc
mixin _$BookInfoModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;

  /// Serializes this BookInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookInfoModelCopyWith<BookInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookInfoModelCopyWith<$Res> {
  factory $BookInfoModelCopyWith(
          BookInfoModel value, $Res Function(BookInfoModel) then) =
      _$BookInfoModelCopyWithImpl<$Res, BookInfoModel>;
  @useResult
  $Res call({String? id, String? title, String? author});
}

/// @nodoc
class _$BookInfoModelCopyWithImpl<$Res, $Val extends BookInfoModel>
    implements $BookInfoModelCopyWith<$Res> {
  _$BookInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
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
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookInfoModelImplCopyWith<$Res>
    implements $BookInfoModelCopyWith<$Res> {
  factory _$$BookInfoModelImplCopyWith(
          _$BookInfoModelImpl value, $Res Function(_$BookInfoModelImpl) then) =
      __$$BookInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title, String? author});
}

/// @nodoc
class __$$BookInfoModelImplCopyWithImpl<$Res>
    extends _$BookInfoModelCopyWithImpl<$Res, _$BookInfoModelImpl>
    implements _$$BookInfoModelImplCopyWith<$Res> {
  __$$BookInfoModelImplCopyWithImpl(
      _$BookInfoModelImpl _value, $Res Function(_$BookInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
  }) {
    return _then(_$BookInfoModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookInfoModelImpl implements _BookInfoModel {
  const _$BookInfoModelImpl({this.id, this.title, this.author});

  factory _$BookInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookInfoModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? author;

  @override
  String toString() {
    return 'BookInfoModel(id: $id, title: $title, author: $author)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, author);

  /// Create a copy of BookInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookInfoModelImplCopyWith<_$BookInfoModelImpl> get copyWith =>
      __$$BookInfoModelImplCopyWithImpl<_$BookInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookInfoModelImplToJson(
      this,
    );
  }
}

abstract class _BookInfoModel implements BookInfoModel {
  const factory _BookInfoModel(
      {final String? id,
      final String? title,
      final String? author}) = _$BookInfoModelImpl;

  factory _BookInfoModel.fromJson(Map<String, dynamic> json) =
      _$BookInfoModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get author;

  /// Create a copy of BookInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookInfoModelImplCopyWith<_$BookInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
