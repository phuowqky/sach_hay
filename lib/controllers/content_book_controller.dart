import 'dart:developer';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


import '../core/di/common_features.dart';
import '../core/network/api_service/api_service.dart';


class ContentBookController extends GetxController {
  final apiService = getIt<ApiService>();
  final isLoading = false.obs;
  var bookTitle = ''.obs;
  var chapterIndex = 0.obs;
  var chapterTitle = ''.obs;
  var content = ''.obs;
  var errorMessage = ''.obs;

  void onInit() {
    super.onInit();
    // getChapterContent();
    }

  // Future<void> getChapterContent() async {
  //   isLoading.value = true;
  //   //   final index = await BookStorage.getSelectIndexChapter();
  //   // final bookId = await UserStorage.getBookId();
  //   final index = 40;
  //   final bookId = "68f28ae4ae9e790e0d2a91c1";
  //   try {
  //     final response = await apiService.getChapterContent(bookId, index);
  //     if (response.success) {
  //       log("Get chapter content successfully $response");
  //       bookTitle.value = response.bookTitle ?? '';
  //       chapterIndex.value = response.chapterIndex ?? 0;
  //       chapterTitle.value = response.chapterTitle ?? '';
  //       content.value = response.content ?? '';
  //     } else {
  //       print("getContentBook failed: $response");
  //     }
  //   } catch (e, stack) {
  //     print("Error getting content book: $e, stack: $stack");
  //   } finally {
  //     isLoading.value = false;
  //   }
  // }

// Bây giờ hàm nhận bookId và index
  Future<void> getChapterContent({required String bookId, required int index}) async {
    isLoading.value = true;
    errorMessage.value = '';
    try {
      final response = await apiService.getChapterContent(bookId, index);
      if (response.success) {
        log("Get chapter content successfully $response");
        bookTitle.value = response.bookTitle ?? '';
        chapterIndex.value = response.chapterIndex ?? 0;
        chapterTitle.value = response.chapterTitle ?? '';
        content.value = response.content ?? '';
      } else {
        // nếu API trả success = false, gán lỗi để UI hiện
        // errorMessage.value = response.message ?? 'Lỗi khi lấy chương sách';
        log('getChapterContent failed: $response');
      }
    } catch (e, stack) {
      errorMessage.value = 'Lỗi: $e';
      log("Error getting content book: $e, stack: $stack");
    } finally {
      isLoading.value = false;
    }
  }
}