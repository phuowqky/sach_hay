import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sach_hay/controllers/auth_controller.dart';

class UserProfileScreen extends StatefulWidget {
   UserProfileScreen({super.key});
    static const String userprofileScreen = '/user_profile_screen';

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final controller = Get.put<AuthController>(AuthController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getUserProfile();

  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
