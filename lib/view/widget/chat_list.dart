import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sach_hay/data/models/chat_model/chat_message.dart';
import 'package:sach_hay/view/widget/chat_bubble.dart';

class ChatList extends StatelessWidget {
  final RxList<ChatMessage> messages;
  final ScrollController scrollController;

  const ChatList({
    super.key,
    required this.messages,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
      controller: scrollController,
      padding: const EdgeInsets.all(16),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        return ChatBubble(message: message);
      },
    ));
  }
}