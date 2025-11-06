import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sach_hay/controllers/library_book_controller.dart';
import 'package:sach_hay/core/theme/app_colors.dart';
import 'package:sach_hay/data/models/bookmark_model/bookmark_model.dart';

class LibraryBookScreen extends StatelessWidget {
  final LibraryBookController controller = Get.put(LibraryBookController());

  LibraryBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thư viện của tôi'),
        backgroundColor: AppColors.primary,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.list_Bookmark.isEmpty) {
          return const Center(child: Text('Chưa có bookmark nào.'));
        }

        return ListView.builder(
          itemCount: controller.list_Bookmark.length,
          itemBuilder: (context, index) {
            final BookmarkModel bookmark = controller.list_Bookmark[index];
            final book = bookmark.book; // Dữ liệu trong bookId

            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: ClipRRect(
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
                title: Text(
                  book?.title ?? 'Không có tiêu đề',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Builder(
                  builder: (context) {
                    // Chuyển String -> double và giới hạn từ 0 -> 100
                    final progressValue =
                        double.tryParse(bookmark.progress ?? '0') ?? 0.0;
                    final progressPercent = (progressValue / 100).clamp(0.0, 1.0);

                    return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${book?.author ?? 'Không rõ tác giả'}',
                        style: const TextStyle(color: Colors.grey),
                      ),
                      ClipRect(
                        child: LinearProgressIndicator(
                          // value: bookmark.progress != null
                          //     ? double.tryParse(bookmark.progress!)! / 100
                          //     : 0.0,
                          minHeight: 6,
                          value: progressPercent,
                          backgroundColor: Colors.grey[300],
                          color: AppColors.primary,
                          valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                        ),
                      )
                    ],
                  );}
                ),
                isThreeLine: true,
                onTap: () {
                  // Khi nhấn vào sách → có thể mở chi tiết sách
                  Get.snackbar('Mở sách', 'Đang mở: ${book?.title ?? 'Không rõ'}');
                },
              ),
            );
          },
        );
      }),
    );
  }
}
