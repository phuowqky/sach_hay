import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sach_hay/controllers/advise_controller.dart';
import 'package:sach_hay/view/widget/chat_input.dart';
import 'package:sach_hay/view/widget/chat_list.dart';

class AdviseScreen extends StatelessWidget {
  static const String adviseScreen = '/advise_screen';
  const AdviseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AdviseController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tư Vấn Sách"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Danh sách tin nhắn
          Expanded(
            child: ChatList(
              messages: controller.messages,
              scrollController: controller.scrollController,
            ),
          ),

          // Loading indicator
          Obx(() => controller.isLoading.value
              ? const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircularProgressIndicator(),
          )
              : const SizedBox.shrink()),

          // Input field
          ChatInput(
            textController: controller.textController,
            // onSend: controller.sendMessage,
            onSend: (value) async {
              await controller.getBookRecommendations();
            },
            isLoading: controller.isLoading,
          ),
        ],
      ),
    );
  }
}