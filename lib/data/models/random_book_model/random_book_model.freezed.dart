// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RandomBookModel _$RandomBookModelFromJson(Map<String, dynamic> json) {
  return _RandomBookModel.fromJson(json);
}

/// @nodoc
mixin _$RandomBookModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;

  /// Serializes this RandomBookModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RandomBookModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RandomBookModelCopyWith<RandomBookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomBookModelCopyWith<$Res> {
  factory $RandomBookModelCopyWith(
          RandomBookModel value, $Res Function(RandomBookModel) then) =
      _$RandomBookModelCopyWithImpl<$Res, RandomBookModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? author,
      String? description,
      String? category});
}

/// @nodoc
class _$RandomBookModelCopyWithImpl<$Res, $Val extends RandomBookModel>
    implements $RandomBookModelCopyWith<$Res> {
  _$RandomBookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RandomBookModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? category = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RandomBookModelImplCopyWith<$Res>
    implements $RandomBookModelCopyWith<$Res> {
  factory _$$RandomBookModelImplCopyWith(_$RandomBookModelImpl value,
          $Res Function(_$RandomBookModelImpl) then) =
      __$$RandomBookModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? author,
      String? description,
      String? category});
}

/// @nodoc
class __$$RandomBookModelImplCopyWithImpl<$Res>
    extends _$RandomBookModelCopyWithImpl<$Res, _$RandomBookModelImpl>
    implements _$$RandomBookModelImplCopyWith<$Res> {
  __$$RandomBookModelImplCopyWithImpl(
      _$RandomBookModelImpl _value, $Res Function(_$RandomBookModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RandomBookModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? category = freezed,
  }) {
    return _then(_$RandomBookModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RandomBookModelImpl implements _RandomBookModel {
  const _$RandomBookModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.title,
      this.author,
      this.description,
      this.category});

  factory _$RandomBookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RandomBookModelImplFromJson(json);

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
  String toString() {
    return 'RandomBookModel(id: $id, title: $title, author: $author, description: $description, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomBookModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, author, description, category);

  /// Create a copy of RandomBookModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomBookModelImplCopyWith<_$RandomBookModelImpl> get copyWith =>
      __$$RandomBookModelImplCopyWithImpl<_$RandomBookModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RandomBookModelImplToJson(
      this,
    );
  }
}

abstract class _RandomBookModel implements RandomBookModel {
  const factory _RandomBookModel(
      {@JsonKey(name: '_id') final String? id,
      final String? title,
      final String? author,
      final String? description,
      final String? category}) = _$RandomBookModelImpl;

  factory _RandomBookModel.fromJson(Map<String, dynamic> json) =
      _$RandomBookModelImpl.fromJson;

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

  /// Create a copy of RandomBookModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RandomBookModelImplCopyWith<_$RandomBookModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
