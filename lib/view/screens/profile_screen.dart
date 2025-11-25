

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';
import 'package:sach_hay/core/theme/app_colors.dart';
import 'package:sach_hay/core/theme/app_sizes.dart';
import 'package:sach_hay/core/theme/app_text_styles.dart';

import '../../controllers/auth_controller.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  static const String profileScreen = '/profile_screen';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final controller = Get.put<AuthController>(AuthController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getAvatar();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Container(
                height: 124,
                decoration: BoxDecoration(
                  color: AppColors.primary
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(controller.userModel.value?.avt ?? 'https://i.pinimg.com/736x/ce/5f/89/ce5f891b397be684a5ace5174566184e.jpg'),
                      ),
                      SizedBox(width:  AppSizes.space12,),
                      Text("Phương Trường Kỳ", style: AppTextStyles.h6.copyWith(color: AppColors.white),)
                    ],
                  ),
                ),

              ),

              Container(
                margin: EdgeInsets.only(top: 8, left: 12),

                child: _MenuItem(
                  imagePath: "assets/images/Hosocuatoi.png",
                  title: 'Hồ sơ của tôi',
                  onTap: () {
                    // Xử lý khi nhấn vào mục "Hồ sơ của tôi"
                    context.push('/user_profile_screen');
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, left: 12),

                child: _MenuItem(
                  imagePath: "assets/images/compliant.png",
                  title: 'Thông tin pháp lý',
                  onTap: () {
                    // Xử lý khi nhấn vào mục "Hồ sơ của tôi"
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, left: 12),

                child: _MenuItem(
                  imagePath: "assets/images/reporting.png",
                  title: 'Báo cáo sự cố',
                  onTap: () {
                    // Xử lý khi nhấn vào mục "Hồ sơ của tôi"
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, left: 12),

                child: _MenuItem(
                  imagePath: "assets/images/user-logout.png",
                  title: 'Đăng xuất',
                  onTap: () {
                    // Xử lý khi nhấn vào mục "Hồ sơ của tôi"
                  },
                ),
              ),

              SizedBox(height: AppSizes.space204,),

              Center(child: Text(" Phiên bản 1.0.0", style: AppTextStyles.bodySmall.copyWith(color: AppColors.grey400),))
      ],
          )
        ),
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  // final IconData icon;
  final String title;
  final VoidCallback onTap;
  final String imagePath;

  const _MenuItem({
    // required this.icon,
    required this.title,
    required this.onTap,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: Icon(icon, color: AppColors.primaryLight),
      leading: Image.asset(imagePath, width: 24, height: 24,),
      title: Text(title),
      onTap: () {
        onTap.call();
      },
    );
  }
}