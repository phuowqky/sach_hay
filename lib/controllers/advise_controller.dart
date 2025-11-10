import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sach_hay/core/di/common_features.dart';
import 'package:sach_hay/data/models/chat_model/chat_message.dart';
import 'package:sach_hay/data/models/chat_model/message_request_model.dart';

import '../core/network/api_service/api_service.dart';

class AdviseController extends GetxController {
  final messages = <ChatMessage>[].obs;
  final textController = TextEditingController();
  final scrollController = ScrollController();
  final isLoading = false.obs;
  final apiService = getIt<ApiService>();

  @override
  void onInit() {
    super.onInit();
    messages.add(ChatMessage(
      text: "Xin chào! Tôi là trợ lý tư vấn sách. Bạn đang tìm kiếm loại sách gì?",
      isUser: false,
      timestamp: DateTime.now(),
    ));
  }

  void sendMessage(String text) {
    if (text.trim().isEmpty) return;

    messages.add(ChatMessage(
      text: text,
      isUser: true,
      timestamp: DateTime.now(),
    ));

    textController.clear();
    _scrollToBottom();
    _callAIApi(text);
  }

  Future<void> _callAIApi(String userMessage) async {
    isLoading.value = true;

    try {
      // TODO: Gọi API của bạn ở đây
      // final response = await yourApiService.getAdvise(userMessage);

      await Future.delayed(const Duration(seconds: 1));
      final aiResponse = "Đây là câu trả lời từ AI cho: $userMessage";

      messages.add(ChatMessage(
        text: aiResponse,
        isUser: false,
        timestamp: DateTime.now(),
      ));

      _scrollToBottom();
    } catch (e) {
      messages.add(ChatMessage(
        text: "Xin lỗi, đã có lỗi xảy ra. Vui lòng thử lại.",
        isUser: false,
        timestamp: DateTime.now(),
      ));
    } finally {
      isLoading.value = false;
    }
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Future<void> getBookRecommendations() async {
    isLoading.value = true;
    // MessageRequestModel messageReq = MessageRequestModel(
    //   message: "Sách tôi tự học Tác giả: Nguyễn Duy Cần nói về điều gì?"
    // );
    final userId = "68f9fffe137375eaa0a4689f";
    final messageRequest = MessageRequestModel(message: "Tôi muốn đọc sách về chủ đề phát triển bản thân và kỹ năng sống. Bạn có thể gợi ý cho tôi vài cuốn sách hay không?");

    try {
      final response = await apiService.getBookRecommendations(userId, messageRequest);
      if (response.success) {
        // Xử lý dữ liệu phản hồi ở đây
        final recommendations = response.data ?? "Không có đề xuất nào.";
        messages.add(ChatMessage(
          text: recommendations,
          isUser: false,
          timestamp: DateTime.now(),
        ));
        _scrollToBottom();
      } else {
        // Xử lý lỗi ở đây
        messages.add(ChatMessage(
          text: "Xin lỗi, không thể lấy đề xuất sách vào lúc này.",
          isUser: false,
          timestamp: DateTime.now(),
        ));
      }
    } catch (e) {
      log("Error getting book recommendations: $e");
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    textController.dispose();
    scrollController.dispose();
    super.onClose();
  }
}
