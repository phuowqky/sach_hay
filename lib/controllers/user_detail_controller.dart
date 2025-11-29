import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sach_hay/core/network/api_service/api_service.dart';
import 'package:sach_hay/data/models/login/login_model.dart';
import 'package:sach_hay/data/storage/user_storage.dart';

import '../core/di/common_features.dart';

class UserDetailController extends GetxController{
  final apiService = getIt<ApiService>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController idController = TextEditingController();
  // Rxn<UserModel> userModel = Rxn<UserModel>();
  Rx<String> avt = ''.obs;
  Rx<File?> pickedImage = Rx<File?>(null);

  Future<void> pickImage() async{
    final ImagePicker picker = ImagePicker(); //ImagePicker là plugin để mở gallery hoặc camera, tạo một object để gọi hàm lấy ảnh
    final XFile? img = await picker.pickImage(
        source: ImageSource.gallery //mở thư viện ảnh.
    );
    
    if(img != null){
      pickedImage.value = File(img.path); //File(img.path) chuyển đường dẫn ảnh thành file để dùng trong Flutter
    }
  }

  Future<void> getUserProfile() async{
    try {
      final token = await UserStorage.getToken();
      // final res = await apiService.getUserProfile(token);
      final res = await apiService.getUserProfile("Bearer $token");

      if(res.success){
        log("User profile: ${res.data}");
        nameController.text = res.data?.user?.userName ?? '';
        idController.text = res.data?.user?.id ?? '';
        emailController.text = res.data!.user?.email ?? '';
        phoneController.text = res.data?.user?.phone ?? '';
        // userModel.value = res.data;
        avt.value = res.data?.user?.avt ?? '';


      }else{
        log("Failed to get user profile: ${res.message}");
      }
    }catch(e){
      log("Error get user profile: $e");
    }
  }
}