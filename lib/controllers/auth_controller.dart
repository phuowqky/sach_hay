import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../core/di/common_features.dart';
import '../core/network/api_service/api_service.dart';
import '../data/models/login/login_model.dart';
import '../data/storage/user_storage.dart';
import '../view/widget/custom_toast.dart';

class AuthController extends GetxController {
  Rx<String> message = "".obs;
  final isLoading = false.obs;

  final apiService = getIt<ApiService>();


  Future<bool> login(String email, String password) async {

    if (email.isEmpty || password.isEmpty) {
      message.value = "Please enter all required information.";
      return false;
    }
    if (password.length <= 6) {
      message.value = "Password required bigger than 6 character";
      return false;
    }
    UserModel user = UserModel(
      email: email,
      password: password,
    );
    try {
      var res = await apiService.login(user);
      log("$res");
      if (res.success) {
        log('Login success: ${res.data}');
        await UserStorage.saveToken(res.data!.token ?? "");
        log('Token: ${res.data!.token}');
        await UserStorage.saveUserId(res.data!.user?.id ?? "");
        log("Id User: ${res.data!.user?.id}");
        return true;
      } else {
        log('Login failed: ${res.message}');
        return false;
      }
    } catch (e, stack) {
      log('Login error: $e, stack: $stack');
      return false;
    }
  }

  Future<bool> register(String phone, String email, String userName,
      String password, String confirmPassword) async {
    UserModel user = UserModel(
        phone: phone,
        userName: userName,
        email: email,
        password: password,
        confirmPassword: confirmPassword);

    try {
      var res = await apiService.Register(user);
      if (res.success) {
        log("fetch register successfully $res");
        CustomToast.showSuccess("${res.message}");
        return true;
      } else {
        log("Falled fetch register $res");
        CustomToast.showError("${res.message}");
        return false;
      }
    } catch (e, stack) {
      log("Error fetch register $e, stack: $stack");
      CustomToast.showError("An error occurred, please try again");
      return false;
    } finally {
      isLoading .value = false;
    }
  }


  Future<void> handelLogin(BuildContext context, String email, String password) async {
    if (isLoading.value) return;
    isLoading.value = true;

    try {
      final success = await login(email, password);
      if (success) {
        CustomToast.showSuccess("Login successfully");
        context.go('/home_screen');
      } else {
        CustomToast.showError("Login failed");
      }
    } catch (e) {
      CustomToast.showError("An unexpected error occurred");
    } finally {
      isLoading.value = false;
    }
  }
}
