// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ChatInput extends StatelessWidget {
//   final TextEditingController textController;
//   final Function(String) onSend;
//   final RxBool isLoading;
//
//   const ChatInput({
//     super.key,
//     required this.textController,
//     required this.onSend,
//     required this.isLoading,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             offset: const Offset(0, -2),
//             blurRadius: 4,
//             color: Colors.black.withOpacity(0.1),
//           ),
//         ],
//       ),
//       child: SafeArea(
//         child: Row(
//           children: [
//             Expanded(
//               child: TextField(
//                 controller: textController,
//                 decoration: InputDecoration(
//                   hintText: "Nhập câu hỏi của bạn...",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(24),
//                   ),
//                   contentPadding: const EdgeInsets.symmetric(
//                     horizontal: 16,
//                     vertical: 12,
//                   ),
//                 ),
//                 maxLines: null,
//                 textInputAction: TextInputAction.send,
//                 onSubmitted: onSend,
//               ),
//             ),
//             const SizedBox(width: 8),
//             Obx(() => IconButton(
//               onPressed: isLoading.value
//                   ? null
//                   : () => onSend(textController.text),
//               icon: const Icon(Icons.send),
//               color: Colors.blue,
//             )),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sach_hay/core/theme/app_colors.dart';
import 'package:sach_hay/view/widget/custom_textfield.dart';

class ChatInput extends StatelessWidget {
  final TextEditingController textController;
  final void Function(String) onSend;
  final RxBool isLoading;

  const ChatInput({
    super.key,
    required this.textController,
    required this.onSend,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          // color: AppColors.grey200,
        ),

        margin: const EdgeInsets.all(24),
        child: Stack(
          children: [
            // TextField chiếm toàn bộ chiều rộng
            // TextField(
            //   controller: textController,
            //   decoration: const InputDecoration(
            //     hintText: "Nhập tin nhắn...",
            //     border: OutlineInputBorder(),
            //     contentPadding: EdgeInsets.only(right: 48, left: 12, top: 12, bottom: 12), // chừa chỗ cho nút gửi
            //   ),
            // ),
            CustomTextField(
              controller: textController,
              hintText: "Nhập câu hỏi của bạn...",
              contentPadding: const EdgeInsets.only(right: 48, left: 12, top: 12, bottom: 12), // chừa chỗ cho nút gửi
            ),

            // Nút gửi nằm đè bên phải
            Positioned(
              right: 4,
              top: 4,
              bottom: 4,
              child: Obx(() => IconButton(
                icon: const Icon(Icons.send, color: AppColors.primaryLight),
                onPressed: isLoading.value
                    ? null
                    : () {
                  final text = textController.text;
                  onSend(text);
                },
              )),
            ),
          ],
        ),
      ),

    );
  }
}
