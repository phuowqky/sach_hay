// home_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:sach_hay/controllers/home_controller.dart';
import 'package:sach_hay/core/theme/app_colors.dart';
import 'package:sach_hay/core/theme/app_sizes.dart';
import 'package:sach_hay/core/theme/app_text_styles.dart';
import 'package:sach_hay/view/screens/book_screen.dart';


class HomeScreen extends StatelessWidget {
  static const String homeScreen = '/home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.menu, color: AppColors.black, size: AppSizes.icon28),
        ),
        // title: const Text(
        //   'Bookworm',
        //   style: TextStyle(
        //     color: AppColors.black, 
        //     fontWeight: FontWeight.bold,
        //     fontSize: 20,
        //   ),
        // ),
        title: Text('Sách Hay', style: AppTextStyles.h4,),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.search, color: AppColors.black, size: AppSizes.icon28),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: AppColors.grey200,
              child: Icon(Icons.person, color: AppColors.grey600, size: 28),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: AppSizes.space16),
            
            // Welcome Banner
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chào buổi sáng, bạn đọc!',
                    style: AppTextStyles.h1,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Khám phá những câu chuyện mới.',
                    style: AppTextStyles.bodyMedium.copyWith(color: AppColors.grey600),
                  ),
                ],
              ),
            ),

             SizedBox(height: AppSizes.space32),

            // Sách nổi bật
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Sách nổi bật',
                style: AppTextStyles.h4,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 240,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _buildBookCard(
                    'THE\nWOMAN\nIN ME',
                    'Britney Spears',
                    Colors.pink[200]!,
                    Colors.white,
                  ),
                  _buildBookCard(
                    'HOW TO\nWIN\nFRIENDS &\nINFLUENCE\nPEOPLE',
                    'Dale Carnegie',
                    Colors.deepOrange[400]!,
                    Colors.white,
                  ),
                  _buildBookCard(
                    'Sample\nBook',
                    'Author Name',
                    Colors.blue[200]!,
                    Colors.white,
                  ),
                ],
              ),
            ),

            SizedBox(height: AppSizes.space24),

            // Sách thịnh hành
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.space16),
              child: Text(
                'Sách thịnh hành',
                style: AppTextStyles.h4,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 240,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: AppSizes.space16),
                children: [
                  _buildBookCard(
                    'CUỘC SỐNG\nKHÔNG GIỚI\nHẠN',
                    'Nick Vujicic',
                    Colors.lightBlue[200]!,
                    Colors.black87,
                  ),
                  _buildBookCard(
                    'MẬT MÃ\nDA VINCI',
                    'Dan Brown',
                    Colors.orange[900]!,
                    Colors.white,
                  ),
                  _buildBookCard(
                    'Sample\nBook',
                    'Author Name',
                    Colors.green[200]!,
                    Colors.black87,
                  ),
                ],
              ),
            ),

            SizedBox(height: AppSizes.space24),

            // Khám phá thể loại
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.space16),
              child: Text(
                'Khám phá thể loại',
                style: AppTextStyles.h4,
              ),
            ),
            SizedBox(height: AppSizes.space12),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 16),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       // _buildCategoryButton(Icons.book, 'Tất cả', Colors.white),
            //       // _buildCategoryButton(Icons.favorite_border, 'Lãng mạn', Colors.white),
            //       // _buildCategoryButton(Icons.library_books, 'Tiểu thuyết', Colors.white),
            //       // _buildCategoryButton(Icons.description, 'Lịch sử', Colors.white),
            //       _buildCategoryButton(Icons.access_time, 'Tâm lý', Colors.white),
            //       _buildCategoryButton(Icons.collections_bookmark, 'Truyện tranh', Colors.white),
            //     ],
            //   ),
            // ),
            const CategoryItem(
              icon: Icons.book,
              label: 'Tất cả',
              route: '/bookscreen',
            ),

            SizedBox(height: AppSizes.space24),

            // Mới thêm
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.space16),
              child: Text(
                'Mới thêm',
                style: AppTextStyles.h4,
              ),
            ),
            SizedBox(height: AppSizes.space12),
            SizedBox(
              height: 240,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: AppSizes.space16),
                children: [
                  _buildBookCard(
                    'TRẠNG\nCÁ TRÊ\nTHÁI',
                    'Tác giả',
                    Colors.red[900]!,
                    Colors.white,
                  ),
                  _buildBookCard(
                    'CÓ AI TRỞ\nVỀ KHÔNG',
                    'Tác giả',
                    Colors.grey[900]!,
                    Colors.white,
                  ),
                  _buildBookCard(
                    'Sample\nBook',
                    'Author Name',
                    Colors.purple[200]!,
                    Colors.black87,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () {
          return BottomNavigationBar(
            backgroundColor: AppColors.primary,
            currentIndex: controller.selectedIndex.value,
            onTap: controller.changeTab,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: Colors.grey[600],
            selectedFontSize: 12,
            unselectedFontSize: 12,
            elevation: 8,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Trang chủ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books_outlined),
                activeIcon: Icon(Icons.apps),
                label: 'Thư viện',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.library_books),
                label: 'Hồ sơ',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.access_time_outlined),
              //   activeIcon: Icon(Icons.access_time),
              //   label: 'Tự truyện',
              // ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildBookCard(String title, String author, Color bgColor, Color textColor) {
    return Container(
      width: 130,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                    height: 1.3,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title.replaceAll('\n', ' '),
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
          Text(
            author,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
  Widget _buildCategoryButton(IconData icon, String label, Color bgColor) {
    return Container(
      width: 80,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey[300]!, width: 1),
            ),
            child: Icon(icon, color: Colors.grey[700], size: 28),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final String? route;
  const CategoryItem({
    super.key, required this.icon, required this.label, this.onTap, this.route,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? (){
        if (route != null) {
          context.push(route!);
        }
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: AppColors.grey200,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColors.primaryLight, size: 28),
    
            SizedBox(height: AppSizes.space8),
            Text(
              label,
              style: AppTextStyles.bodySmall.copyWith(color: AppColors.primaryLight)
            ),
          ],
        ),
      ),
    );
  }
}

