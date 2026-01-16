// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../controllers/ranking_controller.dart';
// import '../../core/theme/app_colors.dart';
// import '../../data/models/ranking/ranking_model.dart';
// // import AppColors
//
// class RankingScreen extends StatefulWidget {
//   const RankingScreen({super.key});
//   static const String rankingScreen = '/ranking_screen';
//
//   @override
//   State<RankingScreen> createState() => _RankingScreenState();
// }
//
// class _RankingScreenState extends State<RankingScreen> {
//   final RankingController controller = Get.put(RankingController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.white,
//       appBar: AppBar(
//         title: const Text(
//           'Bảng Xếp Hạng',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: AppColors.white,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: AppColors.primary,
//         elevation: 0,
//       ),
//       body: Obx(() {
//         if (controller.isLoading.value) {
//           return const Center(
//             child: CircularProgressIndicator(
//               color: AppColors.primary,
//             ),
//           );
//         }
//
//         if (controller.rankings.isEmpty) {
//           return const Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(
//                   Icons.emoji_events_outlined,
//                   size: 80,
//                   color: AppColors.grey400,
//                 ),
//                 SizedBox(height: 16),
//                 Text(
//                   'Chưa có dữ liệu xếp hạng',
//                   style: TextStyle(
//                     color: AppColors.textSecondary,
//                     fontSize: 16,
//                   ),
//                 ),
//               ],
//             ),
//           );
//         }
//
//         return RefreshIndicator(
//           onRefresh: controller.getRanking,
//           color: AppColors.primary,
//           child: SingleChildScrollView(
//             physics: const AlwaysScrollableScrollPhysics(),
//             child: Column(
//               children: [
//                 _buildPodiumSection(),
//                 _buildRankingsList(),
//               ],
//             ),
//           ),
//         );
//       }),
//     );
//   }
//
//   Widget _buildPodiumSection() {
//     final top3 = controller.rankings.take(3).toList();
//
//     return Container(
//       width: double.infinity,
//       decoration: const BoxDecoration(
//         color: AppColors.primary,
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(30),
//           bottomRight: Radius.circular(30),
//         ),
//       ),
//       child: Column(
//         children: [
//           const SizedBox(height: 20),
//           SizedBox(
//             height: 200,
//             child: Stack(
//               children: [
//                 if (top3.length > 1)
//                   Positioned(
//                     left: 30,
//                     bottom: 40,
//                     child: _buildPodiumPerson(
//                       book: top3[1],
//                       rank: 2,
//                       color: AppColors.grey300,
//                     ),
//                   ),
//                 if (top3.isNotEmpty)
//                   Positioned(
//                     left: 0,
//                     right: 0,
//                     bottom: 60,
//                     child: _buildPodiumPerson(
//                       book: top3[0],
//                       rank: 1,
//                       color: AppColors.warning,
//                     ),
//                   ),
//                 if (top3.length > 2)
//                   Positioned(
//                     right: 30,
//                     bottom: 20,
//                     child: _buildPodiumPerson(
//                       book: top3[2],
//                       rank: 3,
//                       color: AppColors.secondaryDark,
//                     ),
//                   ),
//               ],
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               _buildPodiumBase('2', 80, AppColors.grey200),
//               const SizedBox(width: 4),
//               _buildPodiumBase('1', 110, AppColors.white),
//               const SizedBox(width: 4),
//               _buildPodiumBase('3', 60, AppColors.grey300),
//             ],
//           ),
//           const SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildPodiumPerson({
//     required RankingModel book,
//     required int rank,
//     required Color color,
//   }) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Container(
//           width: 30,
//           height: 30,
//           decoration: BoxDecoration(
//             color: AppColors.white,
//             shape: BoxShape.circle,
//             border: Border.all(color: color, width: 4),
//             boxShadow: [
//               BoxShadow(
//                 color: AppColors.black.withOpacity(0.2),
//                 blurRadius: 10,
//                 offset: const Offset(0, 5),
//               ),
//             ],
//           ),
//           child: ClipOval(
//             child: book.coverImage != null && book.coverImage!.isNotEmpty
//                 ? Image.network(book.coverImage!, fit: BoxFit.cover)
//                 : Center(
//                     child: Text(
//                       (book.title ?? 'N')[0].toUpperCase(),
//                       style: TextStyle(
//                         fontSize: 32,
//                         fontWeight: FontWeight.bold,
//                         color: color,
//                       ),
//                     ),
//                   ),
//           ),
//         ),
//         const SizedBox(height: 8),
//         Container(
//           constraints: const BoxConstraints(maxWidth: 100),
//           child: Text(
//             book.title ?? 'N/A',
//             style: const TextStyle(
//               fontSize: 13,
//               fontWeight: FontWeight.bold,
//               color: AppColors.white,
//             ),
//             textAlign: TextAlign.center,
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//           ),
//         ),
//         const SizedBox(height: 4),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//           decoration: BoxDecoration(
//             color: AppColors.white,
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Text(
//             '${book.reviewCount ?? 0} pts',
//             style: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.bold,
//               color: color == AppColors.warning
//                   ? AppColors.primary
//                   : AppColors.grey700,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildPodiumBase(String rank, double height, Color color) {
//     return Container(
//       width: 90,
//       height: height,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(10),
//           topRight: Radius.circular(10),
//         ),
//       ),
//       child: Center(
//         child: Text(
//           rank,
//           style: TextStyle(
//             fontSize: 36,
//             fontWeight: FontWeight.bold,
//             color: AppColors.primary,
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildRankingsList() {
//     return ListView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       itemCount: controller.rankings.length,
//       itemBuilder: (context, index) {
//         final book = controller.rankings[index];
//         final rank = index + 1;
//         return _buildRankingItem(book, rank);
//       },
//     );
//   }
//
//   Widget _buildRankingItem(RankingModel book, int rank) {
//     final bool isTopThree = rank <= 3;
//     final bool isIncreasing = (book.avgRating ?? 0) >= 3;
//
//     return Container(
//       margin: const EdgeInsets.only(bottom: 12),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: AppColors.white,
//         borderRadius: BorderRadius.circular(15),
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.grey400.withOpacity(0.1),
//             blurRadius: 10,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 35,
//             alignment: Alignment.center,
//             child: Text(
//               '0$rank',
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: isTopThree ? Colors.orange : Colors.grey[600],
//               ),
//             ),
//           ),
//           const SizedBox(width: 12),
//
//           // Avatar
//           Container(
//             width: 50,
//             height: 50,
//             decoration: BoxDecoration(
//               color: _getAvatarColor(rank),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Center(
//               child: Text(
//                 (book.title ?? 'N')[0].toUpperCase(),
//                 style: const TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(width: 12),
//
//           // Book Info
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   book.title ?? 'N/A',
//                   style: const TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   '${book.reviewCount ?? 0} pts',
//                   style: TextStyle(
//                     fontSize: 13,
//                     color: Colors.grey[600],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//
//           // Trend Indicator
//           Icon(
//             isIncreasing ? Icons.arrow_drop_up : Icons.arrow_drop_down,
//             color: isIncreasing ? Colors.green : Colors.red,
//             size: 32,
//           ),
//         ],
//       ),
//     );
//   }
//
//   Color _getAvatarColor(int rank) {
//     final colors = [
//       Colors.red.shade400,
//       Colors.orange.shade400,
//       Colors.blue.shade400,
//       Colors.purple.shade400,
//       Colors.pink.shade400,
//       Colors.teal.shade400,
//       Colors.indigo.shade400,
//       Colors.amber.shade400,
//     ];
//     return colors[(rank - 1) % colors.length];
//   }
// }

import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

class RankingScreen extends StatelessWidget {
  const RankingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text(
          'Bảng Xếp Hạng',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primary,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  height: 200,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 80,
                        bottom: 20,
                        child: Column(
                          children: [
                            Container(
                              width: 50,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(child: Text('2')),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Book B',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 40,
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(child: Text('1')),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Book A',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 90,
                        bottom: 0,
                        child: Column(
                          children: [
                            Container(
                              width: 45,
                              height: 65,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(child: Text('3')),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Book C',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(width: 80, height: 80, color: Colors.grey),
                    const SizedBox(width: 4),
                    Container(width: 80, height: 110, color: Colors.white),
                    const SizedBox(width: 4),
                    Container(width: 80, height: 60, color: Colors.grey),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
