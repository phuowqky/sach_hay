// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
// class CustomToast {
//   static FToast? _fToast;
//
//   // Khởi tạo FToast
//   static void init(BuildContext context) {
//     _fToast = FToast();
//     _fToast!.init(context);
//   }
//
//   // Toast thành công (màu xanh lá)
//   static void showSuccess(String message) {
//     _fToast?.showToast(
//       child: _buildToast(
//         message: message,
//         backgroundColor: Colors.green,
//         icon: Icons.check_circle,
//       ),
//       gravity: ToastGravity.TOP,
//       toastDuration: Duration(seconds: 3),
//     );
//   }
//
//   // Toast thất bại (màu đỏ)
//   static void showError(String message) {
//     _fToast?.showToast(
//       child: _buildToast(
//         message: message,
//         backgroundColor: Colors.red,
//         icon: Icons.error,
//       ),
//       gravity: ToastGravity.TOP,
//       toastDuration: Duration(seconds: 3),
//     );
//   }
//
//   // Toast cảnh báo (màu cam)
//   static void showWarning(String message) {
//     _fToast?.showToast(
//       child: _buildToast(
//         message: message,
//         backgroundColor: Colors.orange,
//         icon: Icons.warning,
//       ),
//       gravity: ToastGravity.TOP,
//       toastDuration: Duration(seconds: 3),
//     );
//   }
//
//   // Toast thông tin (màu xanh dương)
//   static void showInfo(String message) {
//     _fToast?.showToast(
//       child: _buildToast(
//         message: message,
//         backgroundColor: Colors.blue,
//         icon: Icons.info,
//       ),
//       gravity: ToastGravity.TOP,
//       toastDuration: Duration(seconds: 3),
//     );
//   }
//
//   // Widget xây dựng toast
//   static Widget _buildToast({
//     required String message,
//     required Color backgroundColor,
//     required IconData icon,
//   }) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(25),
//         color: backgroundColor,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 10,
//             offset: Offset(0, 5),
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(
//             icon,
//             color: Colors.white,
//             size: 20,
//           ),
//           SizedBox(width: 12),
//           Flexible(
//             child: Text(
//               message,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 16,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Hủy tất cả toast
//   static void removeAllToasts() {
//     _fToast?.removeCustomToast();
//   }
// }
//
// // Alternative: Simple toast without custom widget (sử dụng Fluttertoast package)
// class SimpleToast {
//   // Toast thành công
//   static void showSuccess(String message) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.TOP,
//       backgroundColor: Colors.green,
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );
//   }
//
//   // Toast thất bại
//   static void showError(String message) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.TOP,
//       backgroundColor: Colors.red,
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );
//   }
//
//   // Toast cảnh báo
//   static void showWarning(String message) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.TOP,
//       backgroundColor: Colors.orange,
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );
//   }
//
//   // Toast thông tin
//   static void showInfo(String message) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.TOP,
//       backgroundColor: Colors.blue,
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';

class CustomToast {
  static FToast? _fToast;

  // Khởi tạo FToast
  static void init(BuildContext context) {
    _fToast = FToast();
    _fToast!.init(context);
  }

  // Toast thành công (màu xanh lá)
  static void showSuccess(String message) {
    _show(
      message: message,
      backgroundColor: AppColors.success,
      icon: Icons.check_circle,
    );
  }

  // Toast thất bại (màu đỏ)
  static void showError(String message) {
    _show(
      message: message,
      backgroundColor: AppColors.error,
      icon: Icons.error,
    );
  }

  // Toast cảnh báo (màu cam)
  static void showWarning(String message) {
    _show(
      message: message,
      backgroundColor: AppColors.warning,
      icon: Icons.warning,
    );
  }

  // Toast thông tin (màu xanh dương)
  static void showInfo(String message) {
    _show(
      message: message,
      backgroundColor: AppColors.info,
      icon: Icons.info,
    );
  }

  // Hàm hiển thị toast chung
  static void _show({
    required String message,
    required Color backgroundColor,
    required IconData icon,
  }) {
    _fToast?.showToast(
      child: _buildToast(
        message: message,
        backgroundColor: backgroundColor,
        icon: icon,
      ),
      gravity: ToastGravity.TOP,
      toastDuration: const Duration(seconds: 3),
    );
  }

  // Widget xây dựng toast
  static Widget _buildToast({
    required String message,
    required Color backgroundColor,
    required IconData icon,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10.r,
            offset: Offset(0, 5.h),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 20.sp,
          ),
          SizedBox(width: 12.w),
          Flexible(
            child: Text(
              message,
              style: AppTextStyles.bodyMedium.copyWith(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Hủy tất cả toast
  static void removeAllToasts() {
    _fToast?.removeCustomToast();
  }
}

