

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sach_hay/data/models/chat_model/chat_message.dart';
import 'package:sach_hay/data/models/chat_model/message_request_model.dart';
import 'package:sach_hay/data/storage/user_storage.dart';
import '../core/network/api_service/api_service.dart';
import '../core/di/common_features.dart';


class AdviseController extends GetxController {
  var messages = <ChatMessage>[].obs;
  final textController = TextEditingController();
  final scrollController = ScrollController();
  final isLoading = false.obs;
  final apiService = getIt<ApiService>();


  @override
  void onInit() {
    super.onInit();
    // tin nhắn khởi đầu của bot
    messages.add(ChatMessage(
      text: "Xin chào! Tôi là trợ lý tư vấn sách. Bạn đang tìm kiếm loại sách gì?",
      isUser: false,
      timestamp: DateTime.now(),
    ));
  }

  // Hàm gửi tin nhắn
  void sendMessage(String text) async {
    if (text.trim().isEmpty) return;

    // Thêm tin nhắn người dùng lên UI
    messages.add(ChatMessage(
      text: text,
      isUser: true,
      timestamp: DateTime.now(),
    ));

    textController.clear();
    _scrollToBottom();
    await getBookRecommendations(text);
  }

  // Gọi API
  Future<void> getBookRecommendations(String messagee) async {
    isLoading.value = true;
    final userId = await UserStorage.getUserId();
    final messageRequest = MessageRequestModel(message: messagee);

    try {
      final response = await apiService.getBookRecommendations(userId, messageRequest);

      if (response.success) {
        // Thêm tin nhắn bot trả lời
        messages.add(ChatMessage(
          text: response.data ?? "Không có đề xuất nào.",
          isUser: false,
          timestamp: DateTime.now(),
        ));
        _scrollToBottom();
      } else {
        messages.add(ChatMessage(
          text: "Xin lỗi, không thể lấy đề xuất sách vào lúc này.",
          isUser: false,
          timestamp: DateTime.now(),
        ));
      }
    } catch (e) {
      log("Error getting book recommendations: $e");
      messages.add(ChatMessage(
        text: "Xin lỗi, có lỗi xảy ra khi kết nối server.",
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

  @override
  void onClose() {
    textController.dispose();
    scrollController.dispose();
    super.onClose();
  }
}
