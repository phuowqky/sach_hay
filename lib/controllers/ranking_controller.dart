// import 'dart:developer';
//
// import 'package:get/get.dart';
// import 'package:sach_hay/core/network/api_service/api_service.dart';
//
// import '../core/di/common_features.dart';
// import '../data/models/ranking/ranking_model.dart';
//
// class RankingController extends GetxController {
//   final rankings = <RankingModel>[].obs;
//   final isLoading = false.obs;
//
//   final apiService = getIt<ApiService>();
//
//   @override
//   void onInit() {
//     super.onInit();
//     getRanking();
//   }
//
//   Future<void> getRanking() async {
//     isLoading.value = true;
//     try {
//       final res = await apiService.getRanking();
//       if (res.success) {
//         log("Call api success: ${res.data}");
//       } else {
//         log("Call api falled");
//       }
//     } catch (e, stack) {
//       log("Error call api: $e, stack: $stack");
//     } finally {
//       isLoading.value = false;
//     }
//   }
// }

import 'dart:developer';

import 'package:get/get.dart';
import 'package:sach_hay/core/network/api_service/api_service.dart';

import '../core/di/common_features.dart';
import '../data/models/ranking/ranking_model.dart';

class RankingController extends GetxController {
  final rankings = <RankingModel>[].obs;
  final isLoading = false.obs;

  final apiService = getIt<ApiService>();

  @override
  void onInit() {
    super.onInit();
    getRanking();
  }

  Future<void> getRanking() async {
    isLoading.value = true;
    try {
      final res = await apiService.getRanking();

      // Debug logs
      log("Response success: ${res.success}");
      log("Response data: ${res.data}");
      log("Data type: ${res.data.runtimeType}");
      log("Data length: ${res.data?.length}");

      if (res.success) {
        if (res.data != null && res.data!.isNotEmpty) {
          rankings.value = res.data!;
          log("Rankings assigned: ${rankings.length} items");

          // Log từng item để kiểm tra
          for (var i = 0; i < rankings.length; i++) {
            log("Book $i: ${rankings[i].title}");
          }
        } else {
          log("Data is null or empty");
          Get.snackbar(
            'Thông báo',
            'Chưa có dữ liệu bảng xếp hạng',
            snackPosition: SnackPosition.BOTTOM,
          );
        }
      } else {
        log("Call api failed: ${res.message}");
        Get.snackbar(
          'Lỗi',
          res.message ?? 'Không thể tải dữ liệu',
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e, stack) {
      log("Error call api: $e");
      log("Stack trace: $stack");
      Get.snackbar(
        'Lỗi',
        'Đã có lỗi xảy ra: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
      log("isLoading set to false");
      log("Final rankings count: ${rankings.length}");
    }
  }
}
