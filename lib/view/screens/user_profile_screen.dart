import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:go_router/go_router.dart';
import 'package:sach_hay/controllers/auth_controller.dart';
import 'package:sach_hay/controllers/user_detail_controller.dart';
import 'package:sach_hay/core/theme/app_colors.dart';
import 'package:sach_hay/core/theme/app_sizes.dart';
import 'package:sach_hay/core/theme/app_text_styles.dart';
import 'package:sach_hay/view/widget/custom_textfield.dart';

class UserProfileScreen extends StatefulWidget {
   UserProfileScreen({super.key});
    static const String userprofileScreen = '/user_profile_screen';

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final controller = Get.put<UserDetailController>(UserDetailController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getUserProfile();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.white,),
          onPressed: () {
            context.pop('profile_screen');
          },
        ),
        title: Text("Thông tin cá nhân", style: AppTextStyles.h6.copyWith(color: AppColors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: AppSizes.space48,),
            GestureDetector(
              onTap: (){

              },
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  controller.avt.value
                      // 'https://i.pinimg.com/736x/ce/5f/89/ce5f891b397be684a5ace5174566184e.jpg', // link tạm
                ),

                // backgroundImage: controller.userModel.value.avt != null ? FileImage(controller.userModel.value.avt!) : ,
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 16.w, right: 16.w,  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: AppSizes.space32,),
                  CustomTextField(
                    // controller: controller.userModel.value?.userName ?? '',
                    textInputAction: TextInputAction.next,
                    controller:  controller.idController,
                    labelText: 'Id',
                    // hintText: 'Nhập tên người dùng',

                  ),
                  SizedBox(height: AppSizes.space16,),

                  CustomTextField(
                    // controller: controller.userModel.value?.userName ?? '',
                    textInputAction: TextInputAction.next,
                    controller:  controller.nameController,
                    labelText: 'Tên người dùng',
                    hintText: 'Nhập tên người dùng',
                    // controller: TextEditingController(text: controller.userModel.value?.name ?? ''),
                  ),

                  SizedBox(height: AppSizes.space16,),

                  CustomTextField(
                    // prefixImage: "assets/images/letter.png",
                    // controller: controller.userModel.value?.userName ?? '',
                    textInputAction: TextInputAction.next,
                    controller:  controller.emailController,
                    labelText: 'Email',
                    hintText: 'Nhập email',
                    // controller: TextEditingController(text: controller.userModel.value?.name ?? ''),
                  ),

                  SizedBox(height: AppSizes.space16,),

                  CustomTextField(
                    // controller: controller.userModel.value?.userName ?? '',
                    textInputAction: TextInputAction.next,
                    controller:  controller.phoneController,
                    labelText: 'Số điện thoại',
                    hintText: 'Nhập số điện thoại',
                    // controller: TextEditingController(text: controller.userModel.value?.name ?? ''),
                  ),
                  SizedBox(height: AppSizes.space20,),
                  // Row(
                  //   children: [
                  //     // Back to Login Button
                  //     Expanded(
                  //       child: OutlinedButton(
                  //         onPressed: () {
                  //           context.pop();
                  //         },
                  //         style: OutlinedButton.styleFrom(
                  //           side: const BorderSide(
                  //               color: Color(0xFF3B82F6)),
                  //           foregroundColor: const Color(0xFF3B82F6),
                  //           padding:
                  //           EdgeInsets.symmetric(vertical: 16.h),
                  //           shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(12.r),
                  //           ),
                  //         ),
                  //         child: Text(
                  //           'Xóa tài khoản',
                  //           style: TextStyle(
                  //             fontSize: 16.sp,
                  //             fontWeight: FontWeight.w600,
                  //             letterSpacing: 0.5,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //
                  //     SizedBox(width: AppSizes.space16),
                  //
                  //     // Create Account Button
                  //     Expanded(
                  //       child: Container(
                  //         decoration: BoxDecoration(
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: const Color(0xFF3B82F6)
                  //                   .withOpacity(0.3),
                  //               blurRadius: 12.r,
                  //               offset: Offset(0, 4.h),
                  //             ),
                  //           ],
                  //         ),
                  //         child: ElevatedButton(
                  //           onPressed: () async {
                  //
                  //           },
                  //           style: ElevatedButton.styleFrom(
                  //             backgroundColor: const Color(0xFF3B82F6),
                  //             foregroundColor: Colors.white,
                  //             padding: EdgeInsets.symmetric(
                  //                 vertical: 16.h),
                  //             shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(12.r),
                  //             ),
                  //             elevation: 0,
                  //           ),
                  //           child: Text(
                  //             'Cập nhật thông tin',
                  //             style: TextStyle(
                  //               fontSize: 16.sp,
                  //               fontWeight: FontWeight.w600,
                  //               letterSpacing: 0.5,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  Row(
                    children: [
                      // Xóa tài khoản Button
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            showConfirmDialog(
                              context,
                              title: 'Xóa tài khoản',
                              message: 'Bạn có chắc chắn muốn xóa tài khoản? Hành động này không thể hoàn tác.',
                              confirmText: 'Xóa',
                              confirmColor: Colors.red,
                              icon: Icons.warning_amber_rounded,
                              iconColor: Colors.red,
                              onConfirm: () {
                                // TODO: Implement delete account logic
                                print('Xóa tài khoản');
                              },
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Color(0xFF3B82F6)),
                            foregroundColor: const Color(0xFF3B82F6),
                            padding: EdgeInsets.symmetric(vertical: 16.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                          child: Text(
                            'Xóa tài khoản',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: AppSizes.space16),
                      // Cập nhật thông tin Button
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFF3B82F6).withOpacity(0.3),
                                blurRadius: 12.r,
                                offset: Offset(0, 4.h),
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            onPressed: () async {
                              showConfirmDialog(
                                context,
                                title: 'Cập nhật thông tin',
                                message: 'Bạn có chắc chắn muốn cập nhật thông tin này không?',
                                confirmText: 'Cập nhật',
                                confirmColor: const Color(0xFF3B82F6),
                                icon: Icons.info_outline,
                                iconColor: const Color(0xFF3B82F6),
                                onConfirm: () {
                                  // TODO: Implement update info logic
                                  print('Cập nhật thông tin');
                                },
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF3B82F6),
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 16.h),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              elevation: 0,
                            ),
                            child: Text(
                              'Cập nhật thông tin',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),


          ],

        ),
      ),
    );
  }
}


Future<void> showConfirmDialog(
    BuildContext context, {
      required String title,
      required String message,
      required String confirmText,
      required VoidCallback onConfirm,
      Color? confirmColor,
      IconData? icon,
      Color? iconColor,
    }) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Row(
          children: [
            Icon(
              icon ?? Icons.info_outline,
              color: iconColor ?? const Color(0xFF3B82F6),
              size: 28.sp,
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        content: Text(
          message,
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.grey[700],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Hủy',
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey[600],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              onConfirm();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: confirmColor ?? const Color(0xFF3B82F6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: Text(
              confirmText,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.white
              ),
            ),
          ),
        ],
      );
    },
  );
}