// import 'package:flutter/material.dart';
// import 'app_colors.dart';
//
// class AppTextStyles {
//   // Headings
//   static const TextStyle h1 = TextStyle(
//     fontSize: 32,
//     fontWeight: FontWeight.bold,
//     color: AppColors.textPrimary,
//     height: 1.2,
//   );
//
//   static const TextStyle h2 = TextStyle(
//     fontSize: 28,
//     fontWeight: FontWeight.bold,
//     color: AppColors.textPrimary,
//     height: 1.3,
//   );
//
//   static const TextStyle h3 = TextStyle(
//     fontSize: 24,
//     fontWeight: FontWeight.w600,
//     color: AppColors.textPrimary,
//     height: 1.3,
//   );
//
//   static const TextStyle h4 = TextStyle(
//     fontSize: 20,
//     fontWeight: FontWeight.w600,
//     color: AppColors.textPrimary,
//     height: 1.4,
//   );
//
//   static const TextStyle h5 = TextStyle(
//     fontSize: 18,
//     fontWeight: FontWeight.w600,
//     color: AppColors.textPrimary,
//     height: 1.4,
//   );
//
//   static const TextStyle h6 = TextStyle(
//     fontSize: 16,
//     fontWeight: FontWeight.w600,
//     color: AppColors.textPrimary,
//     height: 1.5,
//   );
//
//   // Body Text
//   static const TextStyle bodyLarge = TextStyle(
//     fontSize: 16,
//     fontWeight: FontWeight.normal,
//     color: AppColors.textPrimary,
//     height: 1.5,
//   );
//
//   static const TextStyle bodyMedium = TextStyle(
//     fontSize: 14,
//     fontWeight: FontWeight.normal,
//     color: AppColors.textPrimary,
//     height: 1.5,
//   );
//
//   static const TextStyle bodySmall = TextStyle(
//     fontSize: 12,
//     fontWeight: FontWeight.normal,
//     color: AppColors.textSecondary,
//     height: 1.5,
//   );
//
//   // Labels
//   static const TextStyle labelLarge = TextStyle(
//     fontSize: 14,
//     fontWeight: FontWeight.w500,
//     color: AppColors.textPrimary,
//     height: 1.4,
//   );
//
//   static const TextStyle labelMedium = TextStyle(
//     fontSize: 12,
//     fontWeight: FontWeight.w500,
//     color: AppColors.textPrimary,
//     height: 1.4,
//   );
//
//   static const TextStyle labelSmall = TextStyle(
//     fontSize: 10,
//     fontWeight: FontWeight.w500,
//     color: AppColors.textSecondary,
//     height: 1.4,
//   );
//
//   // Button Text
//   static const TextStyle buttonLarge = TextStyle(
//     fontSize: 16,
//     fontWeight: FontWeight.w600,
//     color: AppColors.white,
//     height: 1.2,
//   );
//
//   static const TextStyle buttonMedium = TextStyle(
//     fontSize: 14,
//     fontWeight: FontWeight.w600,
//     color: AppColors.white,
//     height: 1.2,
//   );
//
//   static const TextStyle buttonSmall = TextStyle(
//     fontSize: 12,
//     fontWeight: FontWeight.w600,
//     color: AppColors.white,
//     height: 1.2,
//   );
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class AppTextStyles {
  // Headings
  static TextStyle get h1 => TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    height: 1.2,
  );

  static TextStyle get h2 => TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    height: 1.3,
  );

  static TextStyle get h3 => TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    height: 1.3,
  );

  static TextStyle get h4 => TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    height: 1.4,
  );

  static TextStyle get h5 => TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    height: 1.4,
  );

  static TextStyle get h6 => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    height: 1.5,
  );

  // Body Text
  static TextStyle get bodyLarge => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
    height: 1.5,
  );

  static TextStyle get bodyMedium => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
    height: 1.5,
  );

  static TextStyle get bodySmall => TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
    height: 1.5,
  );

  // Labels
  static TextStyle get labelLarge => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
    height: 1.4,
  );

  static TextStyle get labelMedium => TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
    height: 1.4,
  );

  static TextStyle get labelSmall => TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
    height: 1.4,
  );

  // Button Text
  static TextStyle get buttonLarge => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    height: 1.2,
  );

  static TextStyle get buttonMedium => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    height: 1.2,
  );

  static TextStyle get buttonSmall => TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    height: 1.2,
  );

  // Optional helpers
  static TextStyle custom({
    double? size,
    FontWeight? weight,
    Color? color,
    double? height,
    double? letterSpacing,
  }) {
    return TextStyle(
      fontSize: (size ?? 14).sp,
      fontWeight: weight ?? FontWeight.normal,
      color: color ?? AppColors.textPrimary,
      height: height,
      letterSpacing: letterSpacing,
    );
  }
}
