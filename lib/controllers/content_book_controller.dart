import 'dart:developer';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../core/di/common_features.dart';
import '../core/network/api_service/api_service.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ContentBookController extends GetxController {
  final apiService = getIt<ApiService>();
  final isLoading = false.obs;
  var bookTitle = ''.obs;
  var chapterIndex = 0.obs;
  var chapterTitle = ''.obs;
  var content = ''.obs;
  var errorMessage = ''.obs;
  var isReading = false.obs;
  final FlutterTts tts = FlutterTts();

  late String currentBookId;

  void onInit() {
    super.onInit();
    // getChapterContent();
    initTts();
  }

  @override
  void onClose() {
    tts.stop();
    // tts.dispose();
    super.onClose();
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

  Future<void> initTts() async {
    await tts.setLanguage("vi-VN");
    await tts.setSpeechRate(0.45);
    await tts.setPitch(1.0);

    tts.setStartHandler(() {
      isReading.value = true;
    });

    tts.setCompletionHandler(() {
      isReading.value = false;
    });

    tts.setCancelHandler(() {
      isReading.value = false;
    });
  }

  // Future<void> readChapter() async {
  //   final text = content.value.trim();
  //
  //   if (text.isEmpty) {
  //     log("Content is empty, cannot read");
  //     return;
  //   }
  //
  //   await tts.stop(); // dừng đọc cũ
  //   await tts.speak(text);
  // }

  // Future<void> readChapter() async {
  //   final text = content.value;
  //
  //   if (text.isEmpty) {
  //     log("Content is empty, cannot read");
  //     return;
  //   }
  //
  //   await tts.stop(); // đảm bảo không đọc chồng
  //   await tts.speak(text);
  // }
  //
  // Future<void> stopReading() async {
  //   await tts.stop();
  // }
  //
  // Future<void> pauseReading() async {
  //   await tts.pause();
  // }

  Future<void> readChapter() async {
    final text = content.value.trim();

    if (text.isEmpty) {
      log("Content empty");
      return;
    }

    await tts.stop();

    final chunks = splitText(text);

    for (final chunk in chunks) {
      await tts.speak(chunk);
      await Future.delayed(Duration(milliseconds: 300)); // tránh speak chồng
    }
  }

  // Future<void> resumeReading() async {
  //   await tts.resume();
  // }

  Future<void> getChapterContent(
      {required String bookId, required int index}) async {
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

  /// 🔵 Chuyển sang chương tiếp theo
  Future<void> nextChapter() async {
    await getChapterContent(
      bookId: currentBookId,
      index: chapterIndex.value + 1,
    );
  }

  /// 🔵 Quay lại chương trước
  Future<void> previousChapter() async {
    if (chapterIndex.value > 0) {
      await getChapterContent(
        bookId: currentBookId,
        index: chapterIndex.value - 1,
      );
    }
  }
}

List<String> splitText(String text, {int chunkSize = 3000}) {
  List<String> chunks = [];
  for (int i = 0; i < text.length; i += chunkSize) {
    chunks.add(
      text.substring(
          i, i + chunkSize > text.length ? text.length : i + chunkSize),
    );
  }
  return chunks;
}
