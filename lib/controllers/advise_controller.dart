import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sach_hay/data/models/chat_model/chat_message.dart';

class AdviseController extends GetxController {
  final messages = <ChatMessage>[].obs;
  final textController = TextEditingController();
  final scrollController = ScrollController();
  final isLoading = false.obs;

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

  @override
  void onClose() {
    textController.dispose();
    scrollController.dispose();
    super.onClose();
  }
}
