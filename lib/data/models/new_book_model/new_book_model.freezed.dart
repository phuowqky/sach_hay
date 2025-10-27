// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewBookModel _$NewBookModelFromJson(Map<String, dynamic> json) {
  return _NewBookModel.fromJson(json);
}

/// @nodoc
mixin _$NewBookModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this NewBookModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewBookModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewBookModelCopyWith<NewBookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewBookModelCopyWith<$Res> {
  factory $NewBookModelCopyWith(
          NewBookModel value, $Res Function(NewBookModel) then) =
      _$NewBookModelCopyWithImpl<$Res, NewBookModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? author,
      String? description,
      String? category,
      DateTime? createdAt});
}

/// @nodoc
class _$NewBookModelCopyWithImpl<$Res, $Val extends NewBookModel>
    implements $NewBookModelCopyWith<$Res> {
  _$NewBookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewBookModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? createdAt = freezed,
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewBookModelImplCopyWith<$Res>
    implements $NewBookModelCopyWith<$Res> {
  factory _$$NewBookModelImplCopyWith(
          _$NewBookModelImpl value, $Res Function(_$NewBookModelImpl) then) =
      __$$NewBookModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? author,
      String? description,
      String? category,
      DateTime? createdAt});
}

/// @nodoc
class __$$NewBookModelImplCopyWithImpl<$Res>
    extends _$NewBookModelCopyWithImpl<$Res, _$NewBookModelImpl>
    implements _$$NewBookModelImplCopyWith<$Res> {
  __$$NewBookModelImplCopyWithImpl(
      _$NewBookModelImpl _value, $Res Function(_$NewBookModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewBookModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$NewBookModelImpl(
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewBookModelImpl implements _NewBookModel {
  const _$NewBookModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.title,
      this.author,
      this.description,
      this.category,
      this.createdAt});

  factory _$NewBookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewBookModelImplFromJson(json);

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
  final String? category;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'NewBookModel(id: $id, title: $title, author: $author, description: $description, category: $category, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewBookModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, author, description, category, createdAt);

  /// Create a copy of NewBookModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewBookModelImplCopyWith<_$NewBookModelImpl> get copyWith =>
      __$$NewBookModelImplCopyWithImpl<_$NewBookModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewBookModelImplToJson(
      this,
    );
  }
}

abstract class _NewBookModel implements NewBookModel {
  const factory _NewBookModel(
      {@JsonKey(name: '_id') final String? id,
      final String? title,
      final String? author,
      final String? description,
      final String? category,
      final DateTime? createdAt}) = _$NewBookModelImpl;

  factory _NewBookModel.fromJson(Map<String, dynamic> json) =
      _$NewBookModelImpl.fromJson;

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
  String? get category;
  @override
  DateTime? get createdAt;

  /// Create a copy of NewBookModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewBookModelImplCopyWith<_$NewBookModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
