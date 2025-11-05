import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sach_hay/controllers/library_book_controller.dart';
import '../../core/theme/app_colors.dart';

class LibraryBookScreen extends StatelessWidget {
  LibraryBookScreen({Key? key}) : super(key: key);
  static const String routeName = '/library-book-screen';

  final controller = Get.put(LibraryBookController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thư viện'),
      ),
      body: Obx(() {
        final bookmarks = controller.list_Bookmark;
        if (bookmarks.isEmpty) {
          return const Center(
            child: Text('Chưa có sách trong thư viện'),
          );
        }

        return Padding(
          padding: EdgeInsets.all(12.w),
          child: ListView.builder(
            itemCount: bookmarks.length,
            itemBuilder: (context, index) {
              final bookmark = bookmarks[index];
              final book = bookmark.bookId;

              return Container(
                margin: EdgeInsets.only(bottom: 12.h),
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Hình ảnh sách
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: SizedBox(
                        width: 128.w,
                        height: 156.h,
                        child: _buildBookImage(book?.coverImage),
                      ),
                    ),

                    SizedBox(width: 12.w),

                    // Thông tin sách
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            book?.title ?? 'Không có tiêu đề',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            book?.author ?? 'Không có tác giả',
                            style: const TextStyle(color: Colors.grey),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      }),
    );
  }

  /// Xử lý hiển thị ảnh sách với fallback
  Widget _buildBookImage(String? url) {
    if (url != null && url.isNotEmpty) {
      return Image.network(
        url,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Image.asset(
            'assets/images/reading-book.png',
            fit: BoxFit.cover,
          );
        },
      );
    } else {
      return Image.asset(
        'assets/images/reading-book.png',
        fit: BoxFit.cover,
      );
    }
  }
}
