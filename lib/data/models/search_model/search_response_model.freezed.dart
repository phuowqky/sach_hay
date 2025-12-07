// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchResponseModel _$SearchResponseModelFromJson(Map<String, dynamic> json) {
  return _SearchResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SearchResponseModel {
  List<BookModel> get books => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResponseModelCopyWith<SearchResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseModelCopyWith<$Res> {
  factory $SearchResponseModelCopyWith(
          SearchResponseModel value, $Res Function(SearchResponseModel) then) =
      _$SearchResponseModelCopyWithImpl<$Res, SearchResponseModel>;
  @useResult
  $Res call({List<BookModel> books});
}

/// @nodoc
class _$SearchResponseModelCopyWithImpl<$Res, $Val extends SearchResponseModel>
    implements $SearchResponseModelCopyWith<$Res> {
  _$SearchResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
  }) {
    return _then(_value.copyWith(
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResponseModelImplCopyWith<$Res>
    implements $SearchResponseModelCopyWith<$Res> {
  factory _$$SearchResponseModelImplCopyWith(_$SearchResponseModelImpl value,
          $Res Function(_$SearchResponseModelImpl) then) =
      __$$SearchResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BookModel> books});
}

/// @nodoc
class __$$SearchResponseModelImplCopyWithImpl<$Res>
    extends _$SearchResponseModelCopyWithImpl<$Res, _$SearchResponseModelImpl>
    implements _$$SearchResponseModelImplCopyWith<$Res> {
  __$$SearchResponseModelImplCopyWithImpl(_$SearchResponseModelImpl _value,
      $Res Function(_$SearchResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
  }) {
    return _then(_$SearchResponseModelImpl(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResponseModelImpl implements _SearchResponseModel {
  const _$SearchResponseModelImpl({required final List<BookModel> books})
      : _books = books;

  factory _$SearchResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResponseModelImplFromJson(json);

  final List<BookModel> _books;
  @override
  List<BookModel> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'SearchResponseModel(books: $books)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResponseModelImpl &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResponseModelImplCopyWith<_$SearchResponseModelImpl> get copyWith =>
      __$$SearchResponseModelImplCopyWithImpl<_$SearchResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SearchResponseModel implements SearchResponseModel {
  const factory _SearchResponseModel({required final List<BookModel> books}) =
      _$SearchResponseModelImpl;

  factory _SearchResponseModel.fromJson(Map<String, dynamic> json) =
      _$SearchResponseModelImpl.fromJson;

  @override
  List<BookModel> get books;
  @override
  @JsonKey(ignore: true)
  _$$SearchResponseModelImplCopyWith<_$SearchResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
