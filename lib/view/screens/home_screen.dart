// home_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:sach_hay/controllers/home_controller.dart';
import 'package:sach_hay/core/theme/app_colors.dart';
import 'package:sach_hay/core/theme/app_sizes.dart';
import 'package:sach_hay/core/theme/app_text_styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../data/storage/user_storage.dart';
import '../widget/category_item.dart';

class HomeScreen extends StatelessWidget {
  static const String homeScreen = '/home_screen';
  HomeScreen({Key? key}) : super(key: key);
  final controller = Get.put(HomeController());
  final PageController _pageController = PageController();


  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Scaffold(
      backgroundColor: Colors.white,
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
                            'Chào buổi sáng, bạn đọc!',
                            style: AppTextStyles.h4.copyWith(color: AppColors.white),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Khám phá những câu chuyện mới.',
                            style: AppTextStyles.bodyMedium
                                .copyWith(color: AppColors.white),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),

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
                                'Tìm kiếm sách, tác giả, thể loại...',
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
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: AppSizes.space12),

            Obx((){
              if(controller.isLoading.value){
                return const Center(child: CircularProgressIndicator());
              }
              return Center(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      child: SizedBox(
                        height: 180.h,
                          width: double.infinity,
                          child: PageView.builder(
                              controller: _pageController,
                              itemCount: controller.banners.length,
                              itemBuilder: (context, index){
                              final banner = controller.banners[index];
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(24),
                                  child: Image.network(
                                    banner.imageUrl ?? '',
                                    height: 160.h,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                                        }
                                        )
                      ),
                    ),
                    const SizedBox(height: 12),
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: controller.banners.length,
                      effect: WormEffect(
                        activeDotColor: Colors.blueAccent,
                        dotColor: Colors.grey.shade300,
                        dotHeight: 8,
                        dotWidth: 8,
                        spacing: 6,
                      ),
                    ),
                  ],
                ),
              );
            }),


            SizedBox(height: AppSizes.space32),

            // Sách nổi bật
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sách nổi bật',
                      style: AppTextStyles.h4,
                    ),
                    InkWell(
                      child: Text('Tất cả', style: AppTextStyles.h6.copyWith(color: AppColors.primaryLight)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Obx(() {
              if (controller.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }

              if (controller.trendingBooks.isEmpty) {
                return const Center(child: Text('Không có sách nổi bật'));
              }
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 240.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    itemCount: controller.trendingBooks.length,
                    itemBuilder: (context, index) {
                      final book = controller.trendingBooks[index];
                      return GestureDetector(
                        onTap: () async {
                          await UserStorage.saveBookId(book.id ?? '');
                          context.push('/book_details_screen');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(8),
                          width: 140.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  book.coverImage ?? '',
                                  width: 128,
                                  height: 156,
                                  fit: BoxFit.cover, // hiển thị đầy ảnh
                                ),
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                width: 118,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      book.title ?? '',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      book.author ?? '',
                                      style: const TextStyle(color: Colors.grey),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              );
            }),

            SizedBox(height: AppSizes.space24),

            // Sách thịnh hành
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.space16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sách thịnh hành',
                      style: AppTextStyles.h4,
                    ),
                    InkWell(
                      child: Text('Tất cả', style: AppTextStyles.h6.copyWith(color: AppColors.primaryLight),),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: 248,

                child: Obx(() {
                  if (controller.isLoading.value) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (controller.isLoading.value) {
                    return const Center(child: Text('Không có sách thịnh hành'));
                  }
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    itemCount: controller.randomBooks.length,
                    itemBuilder: (context, index) {
                      final trendingBook = controller.randomBooks[index];
                      return  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () async {
                            await UserStorage.saveBookId(trendingBook.id ?? '');
                            context.push('/book_details_screen');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  blurRadius: 4,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.all(8),
                            width: 140.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    trendingBook.coverImage ?? '',
                                    width: 128,
                                    height: 156,
                                    fit: BoxFit.cover, // hiển thị đầy ảnh
                                  ),
                                ),
                                const SizedBox(height: 8),
                                SizedBox(
                                  width: 118,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        trendingBook.title ?? '',
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        trendingBook.author ?? '',
                                        style: const TextStyle(color: Colors.grey),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),
            ),

            SizedBox(height: AppSizes.space24),

            // Khám phá thể loại
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.space16),
                child: Text(
                  'Khám phá thể loại',
                  style: AppTextStyles.h4,
                ),
              ),
            ),
            SizedBox(height: AppSizes.space12),
            Container(
              margin: const EdgeInsets.all(8),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CategoryItem(
                            icon: Icons.book,
                            label: 'Tất cả',
                            route: '/bookscreen',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CategoryItem(
                              icon: Icons.favorite_border, label: 'Lãng mạn'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CategoryItem(
                              icon: Icons.library_books, label: 'Tiểu thuyết'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CategoryItem(
                              icon: Icons.local_florist, label: 'Thiếu nhi'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CategoryItem(
                              icon: Icons.history_edu, label: 'Lịch sử'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CategoryItem(
                              icon: Icons.sports,
                              label: 'Thể thao'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CategoryItem(
                              icon: Icons.auto_stories,
                              label: 'Truyện ngắn'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CategoryItem(
                              icon: Icons.science,
                              label: 'Khoa học'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CategoryItem(
                              icon: Icons.menu_book,
                              label: 'Giáo dục'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: AppSizes.space24),

            // Mới thêm
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.space16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mới thêm',
                      style: AppTextStyles.h4,
                    ),
                    
                    InkWell(
                      child: Text('Tất cả', style: AppTextStyles.h6.copyWith(color: AppColors.primaryLight)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: AppSizes.space12),
            Obx(() {
              if (controller.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }
              if (controller.newBooks.isEmpty) {
                return const Center(child: Text('Không có sách mới'));
              }
              return Container(
                  height: 240.h,
                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),

                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.newBooks.length,
                    itemBuilder: (context, index) {
                      final newBook = controller.newBooks[index];
                      return GestureDetector(
                        onTap: () async {
                          await UserStorage.saveBookId(newBook.id ?? '');
                          context.push('/book_details_screen');
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(8),
                          width: 140.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  newBook.coverImage ?? '',
                                  width: 128,
                                  height: 156,
                                  fit: BoxFit.cover, // hiển thị đầy ảnh
                                ),
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                width: 118,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      newBook.title ?? '',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      newBook.author ?? '',
                                      style: const TextStyle(color: Colors.grey),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ));
            }),
            const SizedBox(height: 16),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        context.push('/advise_screen');
      }, child: Icon(Icons.chat_outlined, color: AppColors.white,), backgroundColor: AppColors.primaryLight,),
    );
  }

}


