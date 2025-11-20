// //
// //
// // import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import '../../core/theme/app_colors.dart';
// // import '../../core/theme/app_text_styles.dart';
// //
// // class LoadingOverlay extends StatelessWidget {
// //   final bool isLoading;
// //   final bool isSuccess;
// //   final Widget child;
// //   final String? loadingText;
// //   final String? successText;
// //
// //   const LoadingOverlay({
// //     super.key,
// //     required this.isLoading,
// //     required this.child,
// //     this.isSuccess = false,
// //     this.loadingText,
// //     this.successText,
// //   });
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     if (!isLoading && !isSuccess) return child;
// //
// //     return Stack(
// //       children: [
// //         child,
// //         Container(
// //           color: Colors.black.withOpacity(0.5),
// //           child: Center(
// //             child: AnimatedSwitcher(
// //               duration: const Duration(milliseconds: 500),
// //               child: isSuccess
// //                   ? _buildSuccess()
// //                   : _buildLoading(),
// //             ),
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// //
// //   Widget _buildLoading() {
// //     return Container(
// //       key: const ValueKey('loading'),
// //       padding: EdgeInsets.all(24.r),
// //       decoration: BoxDecoration(
// //         color: Colors.white,
// //         borderRadius: BorderRadius.circular(12.r),
// //       ),
// //       child: Column(
// //         mainAxisSize: MainAxisSize.min,
// //         children: [
// //           SizedBox(
// //             width: 36.w,
// //             height: 36.w,
// //             child: CircularProgressIndicator(
// //               strokeWidth: 3.w,
// //               valueColor: AlwaysStoppedAnimation<Color>(
// //                 AppColors.primaryLight,
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 16.h),
// //           Text(
// //             loadingText ?? 'Đang xử lý...',
// //             style: AppTextStyles.bodyLarge.copyWith(
// //               color: AppColors.primaryLight,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //
// //   Widget _buildSuccess() {
// //     return Container(
// //       key: const ValueKey('success'),
// //       padding: EdgeInsets.all(24.r),
// //       decoration: BoxDecoration(
// //         color: Colors.white,
// //         borderRadius: BorderRadius.circular(12.r),
// //       ),
// //       child: Column(
// //         mainAxisSize: MainAxisSize.min,
// //         children: [
// //           Icon(Icons.check_circle, color: Colors.green, size: 48.w),
// //           SizedBox(height: 16.h),
// //           Text(
// //             successText ?? 'Đăng ký thành công!',
// //             style: AppTextStyles.bodyLarge.copyWith(
// //               color: Colors.green,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../core/theme/app_colors.dart';
// import '../../core/theme/app_text_styles.dart';
//
// class LoadingOverlay extends StatelessWidget {
//   final bool isLoading;
//   final Widget child;
//   final String? loadingText;
//   final String? successText; // nếu có text -> hiển thị success
//   final bool isSuccess;
//   final String? statusText;
//
//   const LoadingOverlay({
//     super.key,
//     required this.isLoading,
//     required this.child,
//     this.loadingText,
//     this.successText, required this.isSuccess, this.statusText,
//   });
//
//   // bool get isSuccess => successText != null && successText!.isNotEmpty;
//
//   @override
//   Widget build(BuildContext context) {
//     if (!isLoading && !isSuccess) return child;
//
//     return Stack(
//       children: [
//         child,
//         Container(
//           color: Colors.black.withOpacity(0.5),
//           child: Center(
//             child: AnimatedSwitcher(
//               duration: const Duration(milliseconds: 400),
//               child: isSuccess
//                   ? _buildLoading()
//                   : _buildStatus(isSuccess ?? false, statusText ?? ''),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildLoading() {
//     return Container(
//       key: const ValueKey('loading'),
//       padding: EdgeInsets.all(24.r),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.r),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           SizedBox(
//             width: 36.w,
//             height: 36.w,
//             child: CircularProgressIndicator(
//               strokeWidth: 3.w,
//               valueColor: AlwaysStoppedAnimation<Color>(
//                 AppColors.primaryLight,
//               ),
//             ),
//           ),
//           SizedBox(height: 16.h),
//           Text(
//             loadingText ?? 'Đang xử lý...',
//             style: AppTextStyles.bodyLarge.copyWith(
//               color: AppColors.primaryLight,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildStatus(bool isSuccess, String message) {
//     return Container(
//       key: const ValueKey('status'),
//       padding: EdgeInsets.all(24.r),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.r),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(
//             isSuccess ? Icons.check_circle : Icons.cancel, // ✅❌
//             color: isSuccess ? Colors.green : Colors.red,
//             size: 48.w,
//           ),
//           SizedBox(height: 16.h),
//           Text(
//             message,
//             style: AppTextStyles.bodyLarge.copyWith(
//               color: isSuccess ? Colors.green : Colors.red,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//   Widget _buildError(String message) {
//     return Container(
//       key: const ValueKey('error'),
//       padding: EdgeInsets.all(24.r),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.r),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(Icons.error, color: Colors.red, size: 48.w),
//           SizedBox(height: 16.h),
//           Text(
//             message,
//             style: AppTextStyles.bodyLarge.copyWith(
//               color: Colors.red,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildSuccess(String message) {
//     return Container(
//       key: const ValueKey('success'),
//       padding: EdgeInsets.all(24.r),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.r),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(Icons.check_circle, color: Colors.green, size: 48.w),
//           SizedBox(height: 16.h),
//           Text(
//             message,
//             style: AppTextStyles.bodyLarge.copyWith(
//               color: Colors.green,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//
//

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';

class LoadingOverlay extends StatelessWidget {
  final bool isLoading;
  final bool? isSuccess; // ✅ true = success, false = fail
  final Widget child;
  final String? loadingText;
  final String? statusText; // ✅ text hiển thị cho cả success / error

  const LoadingOverlay({
    super.key,
    required this.isLoading,
    required this.child,
    this.isSuccess,
    this.loadingText,
    this.statusText,
  });

  @override
  Widget build(BuildContext context) {
    // nếu không loading và không có trạng thái => trả về child
    if (!isLoading && isSuccess == null) return child;

    return Stack(
      children: [
        child,
        Container(
          color: Colors.black.withOpacity(0.5),
          child: Center(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              child: isLoading
                  ? _buildLoading()
                  : _buildStatus(isSuccess ?? false, statusText ?? ''),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoading() {
    return Container(
      key: const ValueKey('loading'),
      padding: EdgeInsets.all(24.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 36.w,
            height: 36.w,
            child: CircularProgressIndicator(
              strokeWidth: 3.w,
              valueColor: AlwaysStoppedAnimation<Color>(
                AppColors.primaryLight,
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            loadingText ?? 'Đang xử lý...',
            style: AppTextStyles.bodyLarge.copyWith(
              color: AppColors.primaryLight,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatus(bool isSuccess, String message) {
    return Container(
      key: const ValueKey('status'),
      padding: EdgeInsets.all(24.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isSuccess ? Icons.check_circle : Icons.cancel, // ✅❌
            color: isSuccess ? Colors.green : Colors.red,
            size: 48.w,
          ),
          SizedBox(height: 16.h),
          Text(
            message,
            style: AppTextStyles.bodyLarge.copyWith(
              color: isSuccess ? Colors.green : Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
