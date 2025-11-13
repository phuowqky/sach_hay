// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:sach_hay/data/models/chat_model/chat_message.dart';
// // import 'package:sach_hay/view/widget/chat_bubble.dart';
// //
// // class ChatList extends StatelessWidget {
// //   final RxList<ChatMessage> messages;
// //   final ScrollController scrollController;
// //
// //   const ChatList({
// //     super.key,
// //     required this.messages,
// //     required this.scrollController,
// //   });
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Obx(() => ListView.builder(
// //       controller: scrollController,
// //       padding: const EdgeInsets.all(16),
// //       itemCount: messages.length,
// //       itemBuilder: (context, index) {
// //         final message = messages[index];
// //         return ChatBubble(message: message);
// //       },
// //     ));
// //   }
// // }
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../data/models/chat_model/chat_message.dart';
//
// class ChatList extends StatelessWidget {
//   final RxList<ChatMessage> messages;
//   final ScrollController scrollController;
//
//   const ChatList({
//     super.key,
//     required this.messages,
//     required this.scrollController,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() => ListView.builder(
//       controller: scrollController,
//       itemCount: messages.length,
//       padding: const EdgeInsets.all(8),
//       itemBuilder: (context, index) {
//         final msg = messages[index];
//         return Align(
//           alignment: msg.isUser ? Alignment.centerRight : Alignment.centerLeft,
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: msg.isUser
//                 ? MainAxisAlignment.end
//                 : MainAxisAlignment.start,
//             children: [
//               if (!msg.isUser) ...[
//                 const CircleAvatar(
//                   backgroundColor: Colors.blue,
//                   child: Icon(Icons.auto_stories, color: Colors.white, size: 20),
//                 ),
//                 const SizedBox(width: 8),
//               ],
//
//
//               Container(
//                 padding: const EdgeInsets.all(12),
//                 margin: const EdgeInsets.symmetric(vertical: 4),
//                 decoration: BoxDecoration(
//                   color: msg.isUser ? Colors.blue : Colors.grey[300],
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Text(
//                   msg.text,
//                   style: TextStyle(
//                     color: msg.isUser ? Colors.white : Colors.black,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sach_hay/core/theme/app_sizes.dart';
import 'package:sach_hay/view/widget/typing_indicator.dart';
import '../../controllers/advise_controller.dart';
import '../../data/models/chat_model/chat_message.dart';

class ChatList extends StatelessWidget {
  final RxList<ChatMessage> messages;
  final ScrollController scrollController;
  final AdviseController controller = Get.find<AdviseController>();

   ChatList({
    super.key,
    required this.messages,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
      controller: scrollController,
      // itemCount: messages.length,
      itemCount: messages.length + (controller.isLoading.value ? 1 : 0),
      padding: const EdgeInsets.all(8),
      itemBuilder: (context, index) {
        if (controller.isLoading.value && index == messages.length) {
          return Align(
            alignment: Alignment.centerLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const CircleAvatar(
                //   backgroundColor: Colors.blue,
                //   child: Icon(Icons.auto_stories,
                //       color: Colors.white, size: 20),
                // ),
                SvgPicture.asset("assets/icons/botchat.svg",
                    width: AppSizes.icon32,
                    height: AppSizes.icon32,
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const TypingIndicator(),
                ),
              ],
            ),
          );
        }
        final msg = messages[index];

        return Align(
          alignment:
          msg.isUser ? Alignment.centerRight : Alignment.centerLeft,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: msg.isUser
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              //  Avatar AI (hiển thị bên trái)
              if (!msg.isUser) ...[
                SvgPicture.asset("assets/icons/botchat.svg",
                  width: AppSizes.icon32,
                  height: AppSizes.icon32,
                ),
                // const CircleAvatar(
                //   backgroundColor: Colors.blue,
                //   child: Icon(Icons.auto_stories,
                //       color: Colors.white, size: 20),
                // ),
                const SizedBox(width: 8),
              ],

              //  Bong bóng tin nhắn
              Flexible(
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 260, // chiều cao tối đa
                  ),
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                    color: msg.isUser
                        ? Colors.blue
                        : Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    msg.text,
                    style: TextStyle(
                      color:
                      msg.isUser ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),

              //  Avatar user (hiển thị bên phải)
              if (msg.isUser) ...[
                const SizedBox(width: 8),
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,
                      color: Colors.white, size: 20),
                ),
              ],
            ],
          ),
        );
      },
    ));
  }
}
