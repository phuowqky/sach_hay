// To parse this JSON data, do
//
//     final registerModel = registerModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

RegisterModel registerModelFromJson(String str) =>
    RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

@freezed
class RegisterModel with _$RegisterModel {
  const factory RegisterModel({
    String? phone,
    String? userName,
    String? email,
    String? password,
    String? confirmPassword,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
}
