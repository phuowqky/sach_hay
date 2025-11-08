
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sach_hay/controllers/library_book_controller.dart';
import 'package:sach_hay/core/theme/app_colors.dart';
import 'package:sach_hay/core/theme/app_sizes.dart';
import 'package:sach_hay/core/theme/app_text_styles.dart';
import 'package:sach_hay/data/models/bookmark_model/bookmark_model.dart';

class LibraryBookScreen extends StatelessWidget {
  final LibraryBookController controller = Get.put(LibraryBookController());

  LibraryBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(176), // tăng chiều cao AppBar
        child: AppBar(
          backgroundColor: AppColors.primary,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Hàng đầu tiên: avatar + chuông
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: AppColors.grey200,
                            child: Icon(Icons.person,
                                color: AppColors.grey600, size: 28),
                          ),
                          SizedBox(width: 12),
                        ],
                      ),
                      Icon(Icons.notifications,
                          color: AppColors.white, size: AppSizes.icon28),
                    ],
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Thư viện của tôi',
                          style: AppTextStyles.h4.copyWith(color: AppColors.white),
                        ),

                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Dòng chào buổi sáng
                  Center(
                    child: Stack(
                        alignment: Alignment
                            .centerLeft, // căn vị trí icon bên trái (hoặc center)
                        children: [
                          Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white,),
                            height: 40,
                            width: double.infinity,

                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Icon(
                              Icons.search,
                              color: AppColors.black,
                              size: 28,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 56),
                            child: Text(
                              'Tìm kiếm trong thư viện của bạn',
                              style: AppTextStyles.bodyMedium
                                  .copyWith(color: AppColors.grey600),
                            ),
                          ),
                        ]),
                  )
                ],
              ),
            ),
          ),
        ),

      ),
      body: Column(
        children: [
          // Custom Tab Buttons
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            color: Colors.white,
            child: Obx(() => Row(
              children: [
                _buildTabButton(
                  label: 'Đang đọc',
                  icon: Icons.menu_book,
                  index: 0,
                  isSelected: controller.selectedTab.value == 0,
                ),
                const SizedBox(width: 8),
                _buildTabButton(
                  label: 'Đã hoàn thành',
                  icon: Icons.check_circle_outline,
                  index: 1,
                  isSelected: controller.selectedTab.value == 1,
                ),
                const SizedBox(width: 8),
                _buildTabButton(
                  label: 'Yêu thích',
                  icon: Icons.favorite_border,
                  index: 2,
                  isSelected: controller.selectedTab.value == 2,
                ),
              ],
            )),
          ),

          // Content
          Expanded(
            child: Obx(() {
              if (controller.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }

              if (controller.list_Bookmark.isEmpty) {
                return const Center(child: Text('Chưa có bookmark nào.'));
              }

              // Lọc sách theo tab được chọn
              List<BookmarkModel> filteredBooks = [];

              if (controller.selectedTab.value == 0) {
                // Đang đọc
                filteredBooks = controller.list_Bookmark.where((bookmark) {
                  final rawProgress = bookmark.progress?.replaceAll('%', '').trim() ?? '0';
                  final progressValue = double.tryParse(rawProgress) ?? 0.0;
                  return progressValue > 0 && progressValue < 100;
                }).toList();
              } else if (controller.selectedTab.value == 1) {
                // Đã hoàn thành
                filteredBooks = controller.list_Bookmark.where((bookmark) {
                  final rawProgress = bookmark.progress?.replaceAll('%', '').trim() ?? '0';
                  final progressValue = double.tryParse(rawProgress) ?? 0.0;
                  return progressValue >= 100;
                }).toList();
              } else {
                // Yêu thích
                // filteredBooks = controller.list_Bookmark.where((bookmark) {
                //   return bookmark.isFavorite == true;
                // }).toList();
              }

              if (filteredBooks.isEmpty) {
                return Center(
                  child: Text(
                    controller.selectedTab.value == 0
                        ? 'Chưa có sách đang đọc'
                        : controller.selectedTab.value == 1
                        ? 'Chưa có sách đã hoàn thành'
                        : 'Chưa có sách yêu thích',
                  ),
                );
              }

              return ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 8),
                itemCount: filteredBooks.length,
                itemBuilder: (context, index) {
                  final BookmarkModel bookmark = filteredBooks[index];
                  final book = bookmark.book;

                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Ảnh bìa
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            book?.coverImage ?? '',
                            width: 60,
                            height: 90,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.book, size: 40),
                          ),
                        ),
                        const SizedBox(width: 12),

                        // Thông tin sách + tiến độ
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                book?.title ?? 'Không có tiêu đề',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                book?.author ?? 'Không rõ tác giả',
                                style: const TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                              const SizedBox(height: 8),

                              // Thanh tiến độ
                              Builder(
                                builder: (context) {
                                  final rawProgress = bookmark.progress?.replaceAll('%', '').trim() ?? '0';
                                  final progressValue = double.tryParse(rawProgress) ?? 0.0;
                                  final progressPercent = (progressValue / 100).clamp(0.0, 1.0);

                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 6,
                                        width: 138,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(6),
                                          child: LinearProgressIndicator(
                                            value: progressPercent,
                                            minHeight: 6,
                                            backgroundColor: Colors.grey[300],
                                            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Text(
                                        '${progressValue.toStringAsFixed(0)}%',
                                        style: const TextStyle(fontSize: 12, color: Colors.grey),
                                      ),
                                      SizedBox(width: 12,),
                                      IconButton(onPressed: (){}, icon: Icon(Icons.play_circle, color: AppColors.primary, size: AppSizes.icon24,))
                                    ],
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildTabButton({
    required String label,
    required IconData icon,
    required int index,
    required bool isSelected,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: () => controller.selectedTab.value = index,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primary : Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 18,
                color: isSelected ? Colors.white : Colors.grey[600],
              ),
              const SizedBox(width: 6),
              Flexible(
                child: Text(
                  label,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.grey[600],
                    fontSize: 13,
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}