import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sach_hay/controllers/content_book_controller.dart';

class ReadingChapterScreen extends StatefulWidget {
  const ReadingChapterScreen({super.key});

  @override
  State<ReadingChapterScreen> createState() => _ReadingChapterScreenState();
}

class _ReadingChapterScreenState extends State<ReadingChapterScreen> {
  final ContentBookController controller = Get.put(ContentBookController());
  final ScrollController _scrollController = ScrollController();

  double _fontSize = 18.0;
  bool _showSettings = false;

  @override
  void initState() {
    super.initState();
    controller.getChapterContent();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _adjustFontSize(double delta) {
    setState(() {
      _fontSize = (_fontSize + delta).clamp(14.0, 28.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8E7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8B4513),
        elevation: 0,
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.bookTitle.value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              controller.chapterTitle.value,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 13,
              ),
            ),
          ],
        )),
        actions: [
          IconButton(
            icon: const Icon(Icons.text_fields, color: Colors.white),
            onPressed: () => setState(() => _showSettings = !_showSettings),
          ),
          IconButton(
            icon: const Icon(Icons.bookmark_border, color: Colors.white),
            onPressed: () {
              // TODO: Thêm chức năng bookmark
            },
          ),
        ],
      ),

      // ================= BODY =================
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(color: Color(0xFF8B4513)),
          );
        }

        if (controller.errorMessage.value.isNotEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 60, color: Color(0xFF8B4513)),
                const SizedBox(height: 12),
                Text(
                  controller.errorMessage.value,
                  style: const TextStyle(fontSize: 16, color: Color(0xFF8B4513)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: controller.getChapterContent,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8B4513),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: const Text('Thử lại'),
                ),
              ],
            ),
          );
        }

        return Stack(
          children: [
            // Nội dung chương
            SingleChildScrollView(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tiêu đề chương
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFF8B4513).withOpacity(0.2),
                      ),
                    ),
                    child: Text(
                      controller.chapterTitle.value,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: _fontSize + 6,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF8B4513),
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),

                  // Nội dung chính — dùng SelectableText để tránh lỗi render text dài
                  SelectableText(
                    controller.content.value,
                    style: TextStyle(
                      fontSize: _fontSize,
                      height: 1.8,
                      color: const Color(0xFF2C1810),
                      letterSpacing: 0.3,
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),

            // Bảng cài đặt
            if (_showSettings)
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Cỡ chữ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF8B4513),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove_circle_outline),
                            color: const Color(0xFF8B4513),
                            onPressed: () => _adjustFontSize(-2),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFF8E7),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: const Color(0xFF8B4513).withOpacity(0.3),
                              ),
                            ),
                            child: Text(
                              '${_fontSize.toInt()}',
                              style: TextStyle(
                                fontSize: _fontSize,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF8B4513),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add_circle_outline),
                            color: const Color(0xFF8B4513),
                            onPressed: () => _adjustFontSize(2),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          ],
        );
      }),

      // ================= BOTTOM NAVIGATION =================
      bottomNavigationBar: Obx(() => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: controller.chapterIndex.value > 0
                      ? () {
                    // TODO: Chuyển chương trước
                  }
                      : null,
                  icon: const Icon(Icons.chevron_left),
                  label: const Text('Trước'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8B4513),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Text(
                  '${controller.chapterIndex.value + 1}',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF8B4513),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // TODO: Chuyển chương sau
                  },
                  icon: const Icon(Icons.chevron_right),
                  label: const Text('Sau'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8B4513),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}