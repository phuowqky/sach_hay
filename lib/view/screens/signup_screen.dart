import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';
import 'package:sach_hay/core/theme/app_sizes.dart';

import '../../controllers/auth_controller.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';
import '../widget/custom_textfield.dart';
import '../widget/loading_overlay_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  static const String signupScreen = '/signup_screen';

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _userNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _yearOfBirthController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final controller = Get.put<AuthController>(AuthController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.background,
        // appBar: AppBar(backgroundColor: AppColors.background,leading: IconButton(onPressed: (){context.pop();}, icon: Icon(Icons.arrow_back)),),
        body: Obx(() {
          return LoadingOverlay(
              isLoading: controller.isLoading.value,
              successText: controller.successText.value,

              loadingText: "Đang đăng ký...",
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: AppSizes.space56),
                        Center(
                          child: Column(
                            children: [
                              Text(
                                'Đăng ký',
                                style: AppTextStyles.h2,
                              ),
                            ],
                          ),
                        ),

                        // Form Fields
                        CustomTextField(
                          labelText: 'Email',
                          textInputAction: TextInputAction.next,
                          hintText: 'Nhập email của bạn',
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Vui lòng nhập email của bạn';
                            }
                            if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                .hasMatch(value)) {
                              return 'Vui lòng nhập địa chỉ email hợp lệ';
                            }
                            return null;
                          },
                        ),

                        SizedBox(height: AppSizes.space20),

                        CustomTextField(
                          labelText: 'Tên người dùng',
                          textInputAction: TextInputAction.next,
                          hintText: 'Nhập tên người dùng',
                          controller: _userNameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Vui lòng nhập tên người dùng';
                            }
                            if (value.length < 6) {
                              return 'Tên người dùng phải có ít nhất 6 ký tự';
                            }
                            return null;
                          },
                        ),

                        SizedBox(height: AppSizes.space20),

                        CustomTextField(
                          labelText: 'Số điện thoại',
                          textInputAction: TextInputAction.next,
                          hintText: 'Nhập số điện thoại của bạn',
                          controller: _phoneController,
                          keyboardType: TextInputType.phone,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Vui lòng nhập số điện thoại của bạn';
                            }
                            if (value.length < 10) {
                              return 'Số điện thoại phải có ít nhất 10 ký tự';
                            }
                            return null;
                          },
                        ),

                        SizedBox(height: AppSizes.space20),

                        CustomTextField(
                          labelText: 'Mật khẩu',
                          textInputAction: TextInputAction.next,
                          hintText: 'Vui lòng nhập mật khẩu',
                          obscureText: true,
                          controller: _passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Mật khâu không được để trống';
                            }
                            if (value.length < 6) {
                              return 'Mật khẩu phải có ít nhất 6 ký tự';
                            }
                            return null;
                          },
                        ),

                        SizedBox(height: AppSizes.space20),

                        CustomTextField(
                          labelText: 'Xác nhận mật khẩu',
                          textInputAction: TextInputAction.done,
                          hintText: 'Vui lòng xác nhận mật khẩu',
                          obscureText: true,
                          controller: _confirmPasswordController,
                          onFieldSubmitted: (_) {
                            FocusScope.of(context).unfocus(); // ẩn bàn phím khi nhấn done
                            // Hoặc gọi hàm submit ở đây
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Xác nhận mật khẩu không được để trống';
                            }
                            if (value != _passwordController.text) {
                              return 'Không khớp với mật khẩu đã nhập';
                            }
                            if (value.length < 6) {
                              return 'Mật khẩu phải có ít nhất 6 ký tự';
                            }
                            return null;
                          },
                        ),

                        SizedBox(height: AppSizes.space32),

                        // Action Buttons Row
                        Row(
                          children: [
                            // Back to Login Button
                            Expanded(
                              child: OutlinedButton(
                                onPressed: () {
                                  context.pop();
                                },
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      color: Color(0xFF3B82F6)),
                                  foregroundColor: const Color(0xFF3B82F6),
                                  padding:
                                    EdgeInsets.symmetric(vertical: 16.h),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                ),
                                child: Text(
                                  'Trở về đăng nhập',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(width: AppSizes.space16),

                            // Create Account Button
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFF3B82F6)
                                          .withOpacity(0.3),
                                      blurRadius: 12.r,
                                      offset: Offset(0, 4.h),
                                    ),
                                  ],
                                ),
                                child: ElevatedButton(
                                  onPressed: () async {
                                    if (_formKey.currentState!.validate()) {
                                      await controller.handleRegister(
                                        context,
                                        _phoneController.text,
                                        _emailController.text,
                                        _userNameController.text,
                                        _passwordController.text,
                                        _confirmPasswordController.text,
                                      );
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF3B82F6),
                                    foregroundColor: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 16.h),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                    elevation: 0,
                                  ),
                                  child: Text(
                                    'Tạo tài khoản',
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
                        ),

                        SizedBox(height: AppSizes.space24),
                      ],
                    ),
                  ),
                ),
              ));
        }),
      ),
    );
  }
}
