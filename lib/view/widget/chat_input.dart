import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatInput extends StatelessWidget {
  final TextEditingController textController;
  final Function(String) onSend;
  final RxBool isLoading;

  const ChatInput({
    super.key,
    required this.textController,
    required this.onSend,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 4,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: textController,
                decoration: InputDecoration(
                  hintText: "Nhập câu hỏi của bạn...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
                maxLines: null,
                textInputAction: TextInputAction.send,
                onSubmitted: onSend,
              ),
            ),
            const SizedBox(width: 8),
            Obx(() => IconButton(
              onPressed: isLoading.value
                  ? null
                  : () => onSend(textController.text),
              icon: const Icon(Icons.send),
              color: Colors.blue,
            )),
          ],
        ),
      ),
    );
  }
}