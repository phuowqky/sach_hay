// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RankingModel _$RankingModelFromJson(Map<String, dynamic> json) {
  return _RankingModel.fromJson(json);
}

/// @nodoc
mixin _$RankingModel {
  int? get reviewCount => throw _privateConstructorUsedError;
  String? get bookId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  double? get avgRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RankingModelCopyWith<RankingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingModelCopyWith<$Res> {
  factory $RankingModelCopyWith(
          RankingModel value, $Res Function(RankingModel) then) =
      _$RankingModelCopyWithImpl<$Res, RankingModel>;
  @useResult
  $Res call(
      {int? reviewCount,
      String? bookId,
      String? title,
      String? author,
      String? category,
      String? coverImage,
      double? avgRating});
}

/// @nodoc
class _$RankingModelCopyWithImpl<$Res, $Val extends RankingModel>
    implements $RankingModelCopyWith<$Res> {
  _$RankingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewCount = freezed,
    Object? bookId = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? category = freezed,
    Object? coverImage = freezed,
    Object? avgRating = freezed,
  }) {
    return _then(_value.copyWith(
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RankingModelImplCopyWith<$Res>
    implements $RankingModelCopyWith<$Res> {
  factory _$$RankingModelImplCopyWith(
          _$RankingModelImpl value, $Res Function(_$RankingModelImpl) then) =
      __$$RankingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? reviewCount,
      String? bookId,
      String? title,
      String? author,
      String? category,
      String? coverImage,
      double? avgRating});
}

/// @nodoc
class __$$RankingModelImplCopyWithImpl<$Res>
    extends _$RankingModelCopyWithImpl<$Res, _$RankingModelImpl>
    implements _$$RankingModelImplCopyWith<$Res> {
  __$$RankingModelImplCopyWithImpl(
      _$RankingModelImpl _value, $Res Function(_$RankingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewCount = freezed,
    Object? bookId = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? category = freezed,
    Object? coverImage = freezed,
    Object? avgRating = freezed,
  }) {
    return _then(_$RankingModelImpl(
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RankingModelImpl implements _RankingModel {
  const _$RankingModelImpl(
      {this.reviewCount,
      this.bookId,
      this.title,
      this.author,
      this.category,
      this.coverImage,
      this.avgRating});

  factory _$RankingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RankingModelImplFromJson(json);

  @override
  final int? reviewCount;
  @override
  final String? bookId;
  @override
  final String? title;
  @override
  final String? author;
  @override
  final String? category;
  @override
  final String? coverImage;
  @override
  final double? avgRating;

  @override
  String toString() {
    return 'RankingModel(reviewCount: $reviewCount, bookId: $bookId, title: $title, author: $author, category: $category, coverImage: $coverImage, avgRating: $avgRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingModelImpl &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reviewCount, bookId, title,
      author, category, coverImage, avgRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingModelImplCopyWith<_$RankingModelImpl> get copyWith =>
      __$$RankingModelImplCopyWithImpl<_$RankingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RankingModelImplToJson(
      this,
    );
  }
}

abstract class _RankingModel implements RankingModel {
  const factory _RankingModel(
      {final int? reviewCount,
      final String? bookId,
      final String? title,
      final String? author,
      final String? category,
      final String? coverImage,
      final double? avgRating}) = _$RankingModelImpl;

  factory _RankingModel.fromJson(Map<String, dynamic> json) =
      _$RankingModelImpl.fromJson;

  @override
  int? get reviewCount;
  @override
  String? get bookId;
  @override
  String? get title;
  @override
  String? get author;
  @override
  String? get category;
  @override
  String? get coverImage;
  @override
  double? get avgRating;
  @override
  @JsonKey(ignore: true)
  _$$RankingModelImplCopyWith<_$RankingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
