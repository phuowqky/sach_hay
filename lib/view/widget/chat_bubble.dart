// import 'package:flutter/material.dart';
// import 'package:sach_hay/data/models/chat_model/chat_message.dart';
//
// class ChatBubble extends StatelessWidget {
//   final ChatMessage message;
//
//   const ChatBubble({super.key, required this.message});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 12),
//       child: Row(
//         mainAxisAlignment:
//         message.isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           if (!message.isUser) ...[
//             CircleAvatar(
//               backgroundColor: Colors.blue,
//               child: const Icon(Icons.auto_stories, color: Colors.white, size: 20),
//             ),
//             const SizedBox(width: 8),
//           ],
//           Flexible(
//             child: Container(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//               decoration: BoxDecoration(
//                 color: message.isUser ? Colors.blue : Colors.grey[300],
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Text(
//                 message.text,
//                 style: TextStyle(
//                   color: message.isUser ? Colors.white : Colors.black87,
//                   fontSize: 15,
//                 ),
//               ),
//             ),
//           ),
//           if (message.isUser) ...[
//             const SizedBox(width: 8),
//             CircleAvatar(
//               backgroundColor: Colors.grey[400],
//               child: const Icon(Icons.person, color: Colors.white, size: 20),
//             ),
//           ],
//         ],
//       ),
//     );
//   }
// }