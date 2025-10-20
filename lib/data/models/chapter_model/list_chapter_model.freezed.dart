// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_chapter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListChapterModel _$ListChapterModelFromJson(Map<String, dynamic> json) {
  return _ListChapterModel.fromJson(json);
}

/// @nodoc
mixin _$ListChapterModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  /// Serializes this ListChapterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListChapterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListChapterModelCopyWith<ListChapterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListChapterModelCopyWith<$Res> {
  factory $ListChapterModelCopyWith(
          ListChapterModel value, $Res Function(ListChapterModel) then) =
      _$ListChapterModelCopyWithImpl<$Res, ListChapterModel>;
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, String title, int index});
}

/// @nodoc
class _$ListChapterModelCopyWithImpl<$Res, $Val extends ListChapterModel>
    implements $ListChapterModelCopyWith<$Res> {
  _$ListChapterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListChapterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListChapterModelImplCopyWith<$Res>
    implements $ListChapterModelCopyWith<$Res> {
  factory _$$ListChapterModelImplCopyWith(_$ListChapterModelImpl value,
          $Res Function(_$ListChapterModelImpl) then) =
      __$$ListChapterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, String title, int index});
}

/// @nodoc
class __$$ListChapterModelImplCopyWithImpl<$Res>
    extends _$ListChapterModelCopyWithImpl<$Res, _$ListChapterModelImpl>
    implements _$$ListChapterModelImplCopyWith<$Res> {
  __$$ListChapterModelImplCopyWithImpl(_$ListChapterModelImpl _value,
      $Res Function(_$ListChapterModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListChapterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? index = null,
  }) {
    return _then(_$ListChapterModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListChapterModelImpl implements _ListChapterModel {
  const _$ListChapterModelImpl(
      {@JsonKey(name: '_id') this.id,
      required this.title,
      required this.index});

  factory _$ListChapterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListChapterModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String title;
  @override
  final int index;

  @override
  String toString() {
    return 'ListChapterModel(id: $id, title: $title, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListChapterModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, index);

  /// Create a copy of ListChapterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListChapterModelImplCopyWith<_$ListChapterModelImpl> get copyWith =>
      __$$ListChapterModelImplCopyWithImpl<_$ListChapterModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListChapterModelImplToJson(
      this,
    );
  }
}

abstract class _ListChapterModel implements ListChapterModel {
  const factory _ListChapterModel(
      {@JsonKey(name: '_id') final String? id,
      required final String title,
      required final int index}) = _$ListChapterModelImpl;

  factory _ListChapterModel.fromJson(Map<String, dynamic> json) =
      _$ListChapterModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String get title;
  @override
  int get index;

  /// Create a copy of ListChapterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListChapterModelImplCopyWith<_$ListChapterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
