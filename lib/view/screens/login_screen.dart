

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:sach_hay/view/widget/loading_overlay_widget.dart';

import '../../controllers/auth_controller.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_sizes.dart';
import '../../core/theme/app_text_styles.dart';
import '../widget/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String loginScreen = '/login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final controller = Get.put<AuthController>(AuthController());
  final _emailFocus = FocusNode();
  final _passwordFocus = FocusNode();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.background,
      body: Obx(() {
        return LoadingOverlay(
            isLoading: controller.isLoading.value,
          successText: controller.successText.value,
          loadingText: "Đang đăng nhập...",

          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(AppSizes.space24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(height: AppSizes.space60),
          
                      // Logo
                      Image.asset(
                        'assets/images/reading-book.png',
                        height: 60,
                      ),
          
                      SizedBox(height: AppSizes.space40),
          
                      // Title
                      Text(
                        'Đăng nhập',
                        style: AppTextStyles.h3,
                      ),
          
                      SizedBox(height: AppSizes.space32),
          
                      // Email Field
                      CustomTextField(
                        labelText: 'Email',
                        focusNode: _emailFocus,
                        textInputAction: TextInputAction.next,
                        hintText: 'Nhập email của bạn',
                        // controller: _emailController,
                        // onFieldSubmitted: (_) =>
                        //     FocusScope.of(context).requestFocus(_passwordFocus),
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_passwordFocus);
                        },
                        controller: _emailController,

                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Vui lòng nhập email của bạn';
                          }
                          if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(value)) {
                            return 'Vui lòng nhập email hợp lệ';
                          }
                          return null;
                        },
                      ),
          
                      SizedBox(height: AppSizes.space20),
          
                      // Password Field
                      CustomTextField(
                        labelText: 'Password',
                        textInputAction: TextInputAction.done,
                        focusNode: _passwordFocus,
                        hintText: 'Nhập mật khẩu của bạn',
                        controller: _passwordController,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).unfocus(); // ẩn bàn phím khi nhấn done
                        },
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Vui lòng nhập mật khẩu của bạn';
                          }
                          if (value.length < 6) {
                            return 'Mật khẩu phải có ít nhất 6 ký tự';
                          }
                          return null;
                        },
                      ),

                      InkWell(
                        onTap: () {
                          // context.push('/forgot_password_screen');
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Quên mật khẩu?',
                            style: AppTextStyles.bodyMedium.copyWith(
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ),
          
                      // const SizedBox(height: AppSizes.space32),
          
                      // Sign In Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () async {
                            controller. handelLogin(context, _emailController.text, _passwordController.text);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            foregroundColor: AppColors.background,
                            padding: EdgeInsets.symmetric(vertical: 16.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            'Đăng nhập',
                            style: AppTextStyles.buttonLarge,
                          ),
                        ),
                      ),
          
                      SizedBox(height: AppSizes.space44),
          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Bạn chưa có tài khoản? ",
                            style: AppTextStyles.bodyMedium.copyWith(
                              color: AppColors.textSecondary,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              context.push('/signup_screen');
                            },
                            child: Text(
                              'Đăng ký',
                              style: AppTextStyles.bodyMedium.copyWith(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
          
                      SizedBox(height: AppSizes.space20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );}
      ),
    );
  }

  Widget _socialButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50.w,
        height: 50.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey200),
          borderRadius: BorderRadius.circular(AppSizes.radius8),
        ),
        child: Icon(
          icon,
          color: AppColors.textSecondary,
          size: AppSizes.icon24,
        ),
      ),
    );
  }
}
