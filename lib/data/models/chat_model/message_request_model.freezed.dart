// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageRequestModel _$MessageRequestModelFromJson(Map<String, dynamic> json) {
  return _MessageRequestModel.fromJson(json);
}

/// @nodoc
mixin _$MessageRequestModel {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageRequestModelCopyWith<MessageRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageRequestModelCopyWith<$Res> {
  factory $MessageRequestModelCopyWith(
          MessageRequestModel value, $Res Function(MessageRequestModel) then) =
      _$MessageRequestModelCopyWithImpl<$Res, MessageRequestModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$MessageRequestModelCopyWithImpl<$Res, $Val extends MessageRequestModel>
    implements $MessageRequestModelCopyWith<$Res> {
  _$MessageRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageRequestModelImplCopyWith<$Res>
    implements $MessageRequestModelCopyWith<$Res> {
  factory _$$MessageRequestModelImplCopyWith(_$MessageRequestModelImpl value,
          $Res Function(_$MessageRequestModelImpl) then) =
      __$$MessageRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MessageRequestModelImplCopyWithImpl<$Res>
    extends _$MessageRequestModelCopyWithImpl<$Res, _$MessageRequestModelImpl>
    implements _$$MessageRequestModelImplCopyWith<$Res> {
  __$$MessageRequestModelImplCopyWithImpl(_$MessageRequestModelImpl _value,
      $Res Function(_$MessageRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageRequestModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageRequestModelImpl implements _MessageRequestModel {
  const _$MessageRequestModelImpl({required this.message});

  factory _$MessageRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageRequestModelImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'MessageRequestModel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageRequestModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageRequestModelImplCopyWith<_$MessageRequestModelImpl> get copyWith =>
      __$$MessageRequestModelImplCopyWithImpl<_$MessageRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageRequestModelImplToJson(
      this,
    );
  }
}

abstract class _MessageRequestModel implements MessageRequestModel {
  const factory _MessageRequestModel({required final String message}) =
      _$MessageRequestModelImpl;

  factory _MessageRequestModel.fromJson(Map<String, dynamic> json) =
      _$MessageRequestModelImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$MessageRequestModelImplCopyWith<_$MessageRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
