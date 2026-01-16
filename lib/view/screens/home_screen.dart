// // // Code mới
// // import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:flutter_svg/flutter_svg.dart';
// // import 'package:get/get.dart';
// // import 'package:go_router/go_router.dart';
// // import 'package:sach_hay/controllers/home_controller.dart';
// // import 'package:sach_hay/core/theme/app_colors.dart';
// // import 'package:sach_hay/core/theme/app_sizes.dart';
// // import 'package:sach_hay/core/theme/app_text_styles.dart';
// // import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// //
// // import '../../data/storage/user_storage.dart';
// // import '../widget/category_item.dart';
// // import '../widget/skeleton_home_screen.dart';
// //
// // class HomeScreen extends StatelessWidget {
// //   static const String homeScreen = '/home_screen';
// //   HomeScreen({super.key});
// //   final controller = Get.put(HomeController());
// //   final PageController _pageController = PageController();
// //   final List<Map<String, dynamic>> categories = [
// //     {
// //       'icon': 'assets/images/technology.png',
// //       'label': 'Tất cả',
// //       'route': '/bookscreen'
// //     },
// //     // {
// //     //   'icon': 'assets/images/in-love.png',
// //     //   'label': 'Lãng mạn',
// //     //   'route': '/romance'
// //     // },
// //     // {
// //     //   'icon': 'assets/images/fairytale.png',
// //     //   'label': 'Tiểu thuyết',
// //     //   'route': '/novel'
// //     // },
// //     // {
// //     //   'icon': 'assets/images/boy.png',
// //     //   'label': 'Thiếu nhi',
// //     //   'route': '/children'
// //     // },
// //     // {
// //     //   'icon': 'assets/images/science.png',
// //     //   'label': 'Khoa học',
// //     //   'route': '/science'
// //     // },
// //     // {
// //     //   'icon': 'assets/images/education.png',
// //     //   'label': 'Giáo dục',
// //     //   'route': '/education'
// //     // },
// //   ];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final HomeController controller = Get.put(HomeController());
// //
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: SingleChildScrollView(
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             // Phần AppBar được chuyển vào đây
// //             Container(
// //               color: AppColors.primary,
// //               child: SafeArea(
// //                 bottom: false,
// //                 child: Padding(
// //                   padding:
// //                       const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
// //                   child: Container(
// //                     margin: EdgeInsets.only(
// //                         left: AppSizes.space8, right: AppSizes.space8),
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         // Hàng đầu tiên: avatar + chuông
// //                         Row(
// //                           mainAxisAlignment: MainAxisAlignment.end,
// //                           children: [
// //                             Text(
// //                               "Sách hay",
// //                               style: AppTextStyles.h4
// //                                   .copyWith(color: AppColors.white),
// //                             ),
// //                             SizedBox(width: AppSizes.space104),
// //                             CircleAvatar(
// //                               radius: AppSizes.radius20,
// //                               backgroundColor: AppColors.grey200,
// //                               child: Icon(Icons.person,
// //                                   color: AppColors.grey600,
// //                                   size: AppSizes.icon24),
// //                             ),
// //                           ],
// //                         ),
// //
// //                         SizedBox(
// //                           height: AppSizes.space32,
// //                         ),
// //                         Center(
// //                           child: Column(
// //                             mainAxisAlignment: MainAxisAlignment.start,
// //                             children: [
// //                               Obx(
// //                                 () => Text(
// //                                   controller.greeting.value,
// //                                   style: AppTextStyles.h4
// //                                       .copyWith(color: AppColors.white),
// //                                 ),
// //                               ),
// //                               const SizedBox(height: 4),
// //                               Text(
// //                                 'Khám phá những câu chuyện mới.',
// //                                 style: AppTextStyles.bodyMedium
// //                                     .copyWith(color: AppColors.white),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //
// //                         SizedBox(height: AppSizes.space24),
// //
// //                         // Dòng chào buổi sáng
// //                         GestureDetector(
// //                           onTap: () => context.push('/search'),
// //                           child: Center(
// //                             child: Stack(
// //                                 alignment: Alignment
// //                                     .centerLeft, // căn vị trí icon bên trái (hoặc center)
// //                                 children: [
// //                                   Container(
// //                                     decoration: BoxDecoration(
// //                                       borderRadius: BorderRadius.circular(16),
// //                                       color: Colors.white,
// //                                     ),
// //                                     height: 40,
// //                                     width: double.infinity,
// //                                   ),
// //                                   const Padding(
// //                                     padding: EdgeInsets.only(left: 16),
// //                                     child: Icon(
// //                                       Icons.search,
// //                                       color: AppColors.black,
// //                                       size: 28,
// //                                     ),
// //                                   ),
// //                                   Padding(
// //                                     padding: const EdgeInsets.only(left: 56),
// //                                     child: Text(
// //                                       'Tìm kiếm sách, tác giả, thể loại...',
// //                                       style: AppTextStyles.bodyMedium
// //                                           .copyWith(color: AppColors.grey600),
// //                                     ),
// //                                   ),
// //                                 ]),
// //                           ),
// //                         ),
// //                         SizedBox(height: AppSizes.space24),
// //                         Text(
// //                           "Khám phá",
// //                           style: AppTextStyles.bodyMedium
// //                               .copyWith(color: AppColors.white),
// //                         ),
// //                         SizedBox(height: AppSizes.space12),
// //                         SizedBox(
// //                           height: 36,
// //                           child: ListView.separated(
// //                             scrollDirection: Axis.horizontal,
// //                             itemCount: categories.length,
// //                             separatorBuilder: (_, __) =>
// //                                 const SizedBox(width: 12),
// //                             itemBuilder: (context, index) {
// //                               final c = categories[index];
// //                               return CategoryItem(
// //                                 icon: c['icon'],
// //                                 label: c['label'],
// //                                 route: c['route'],
// //                               );
// //                             },
// //                           ),
// //                         ),
// //                         SizedBox(height: AppSizes.space12),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             // Kết thúc phần AppBar
// //
// //             SizedBox(height: AppSizes.space12),
// //
// //             Obx(() {
// //               // if (controller.isLoading.value) {
// //               //   return const BannerSkeleton(); // ✅ Thêm skeleton
// //               // }
// //               // if (controller.banners.isEmpty) {
// //               //   return const Text("Không có banner");
// //               // }
// //
// //               // Chỉ hiện skeleton khi đang loading lần đầu
// //               // if (controller.isLoading.value && controller.isFirstLoad.value) {
// //               //   return const BannerSkeleton();
// //               // }
// //               //
// //               // // Khi load xong mà không có data
// //               // if (!controller.isLoading.value && controller.banners.isEmpty) {
// //               //   return const Text("Không có banner");
// //               // }
// //               if (!controller.hasLoadedBanners.value) {
// //                 return const BannerSkeleton();
// //               }
// //
// //               // Đã load xong nhưng không có data
// //               if (controller.banners.isEmpty) {
// //                 return const Center(
// //                   child: Padding(
// //                     padding: EdgeInsets.all(16.0),
// //                     child: Text("Không có banner"),
// //                   ),
// //                 );
// //               }
// //               {
// //                 return Center(
// //                   child: Column(
// //                     children: [
// //                       Container(
// //                         margin: const EdgeInsets.symmetric(horizontal: 16),
// //                         child: SizedBox(
// //                             height: 180.h,
// //                             width: double.infinity,
// //                             child: PageView.builder(
// //                                 controller: _pageController,
// //                                 itemCount: controller.banners.length,
// //                                 itemBuilder: (context, index) {
// //                                   final banner = controller.banners[index];
// //                                   return Padding(
// //                                     padding: const EdgeInsets.symmetric(
// //                                         horizontal: 8),
// //                                     child: ClipRRect(
// //                                       borderRadius: BorderRadius.circular(24),
// //                                       child: Image.network(
// //                                         banner.imageUrl ?? '',
// //                                         height: 160.h,
// //                                         width: double.infinity,
// //                                         fit: BoxFit.cover,
// //                                       ),
// //                                     ),
// //                                   );
// //                                 })),
// //                       ),
// //                       const SizedBox(height: 12),
// //                       SizedBox(
// //                         height: 20,
// //                         child: SmoothPageIndicator(
// //                           controller: _pageController,
// //                           count: controller.banners.length,
// //                           effect: WormEffect(
// //                             activeDotColor: Colors.blueAccent,
// //                             dotColor: Colors.grey.shade300,
// //                             dotHeight: 8,
// //                             dotWidth: 8,
// //                             spacing: 6,
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 );
// //               }
// //               // 2. Nếu chưa có dữ liệu nhưng đang loading → skeleton
// //             }),
// //
// //             SizedBox(height: AppSizes.space24),
// //
// //             // Khám phá thể loại
// //             Container(
// //               margin: const EdgeInsets.symmetric(horizontal: 16),
// //               child: Padding(
// //                 padding: EdgeInsets.symmetric(horizontal: AppSizes.space16),
// //                 child: Text(
// //                   'Sách mới thêm',
// //                   style: AppTextStyles.h5.copyWith(color: AppColors.grey600),
// //                 ),
// //               ),
// //             ),
// //             // SizedBox(height: AppSizes.space24),
// //             SizedBox(height: AppSizes.space12),
// //             Obx(() {
// //               if (controller.isBannersLoading.value &&
// //                   !controller.hasLoadedBanners.value) {
// //                 return const NewBooksSkeleton();
// //               }
// //
// //               // Đã load xong nhưng không có data
// //               if (controller.hasLoadedBanners.value &&
// //                   controller.banners.isEmpty) {
// //                 return const Center(
// //                   child: Padding(
// //                     padding: EdgeInsets.all(16.0),
// //                     child: Text("Không có banner"),
// //                   ),
// //                 );
// //               }
// //               return Container(
// //                   height: 194.h,
// //                   padding: const EdgeInsets.symmetric(horizontal: 16),
// //
// //                   // padding: const EdgeInsets.only(left: 12, ),
// //
// //                   child: ListView.builder(
// //                     scrollDirection: Axis.horizontal,
// //                     itemCount: controller.newBooks.length,
// //                     itemBuilder: (context, index) {
// //                       final newBook = controller.newBooks[index];
// //                       return GestureDetector(
// //                         onTap: () async {
// //                           await UserStorage.saveBookId(newBook.id ?? '');
// //                           context.push('/book_details_screen');
// //                         },
// //                         child: Container(
// //                           margin: const EdgeInsets.symmetric(
// //                               horizontal: 6), // Giảm từ 8 xuống 6
// //                           decoration: BoxDecoration(
// //                             color: AppColors.white,
// //                             borderRadius: BorderRadius.circular(8),
// //                             boxShadow: [
// //                               BoxShadow(
// //                                 color: Colors.grey.withOpacity(0.2),
// //                                 blurRadius: 4,
// //                                 offset: const Offset(0, 2),
// //                               ),
// //                             ],
// //                           ),
// //                           padding: const EdgeInsets.all(6), // Giảm từ 8 xuống 6
// //                           width: 110.w, // Giảm từ 140 xuống 110
// //                           child: Column(
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               ClipRRect(
// //                                 borderRadius: BorderRadius.circular(
// //                                     8), // Giảm từ 12 xuống 8
// //                                 child: Image.network(
// //                                   newBook.coverImage ?? '',
// //                                   width: 98, // Giảm từ 128 xuống 98
// //                                   height: 120, // Giảm từ 156 xuống 120
// //                                   fit: BoxFit.cover,
// //                                 ),
// //                               ),
// //                               const SizedBox(height: 6), // Giảm từ 8 xuống 6
// //                               SizedBox(
// //                                 width: 98, // Giảm từ 118 xuống 98
// //                                 child: Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   mainAxisSize: MainAxisSize.min,
// //                                   children: [
// //                                     Text(
// //                                       newBook.title ?? '',
// //                                       style: const TextStyle(
// //                                         fontSize: 12, // Giảm từ 14 xuống 12
// //                                         fontWeight: FontWeight.bold,
// //                                       ),
// //                                       maxLines: 1,
// //                                       overflow: TextOverflow.ellipsis,
// //                                     ),
// //                                     Text(
// //                                       newBook.author ?? '',
// //                                       style: const TextStyle(
// //                                         color: Colors.grey,
// //                                         fontSize: 11, // Thêm fontSize nhỏ hơn
// //                                       ),
// //                                       maxLines: 1,
// //                                       overflow: TextOverflow.ellipsis,
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       );
// //                     },
// //                   ));
// //             }),
// //
// //             SizedBox(height: AppSizes.space32),
// //             // Sách nổi bật
// //             Container(
// //               margin: const EdgeInsets.symmetric(horizontal: 16),
// //               child: Padding(
// //                 padding: const EdgeInsets.symmetric(horizontal: 16),
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Text(
// //                       'Sách nổi bật',
// //                       style: AppTextStyles.h5,
// //                     ),
// //                     InkWell(
// //                       child: Text('Tất cả',
// //                           style: AppTextStyles.h6
// //                               .copyWith(color: AppColors.primaryLight)),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //             const SizedBox(height: 8),
// //             Obx(() {
// //               // Đang loading và chưa có data
// //               if (controller.isTrendingBooksLoading.value &&
// //                   !controller.hasLoadedTrendingBooks.value) {
// //                 return const TrendingBooksSkeleton();
// //               }
// //
// //               // Đã load xong nhưng không có data
// //               if (controller.hasLoadedTrendingBooks.value &&
// //                   controller.trendingBooks.isEmpty) {
// //                 return const Center(
// //                   child: Padding(
// //                     padding: EdgeInsets.all(16.0),
// //                     child: Text('Không có sách nổi bật'),
// //                   ),
// //                 );
// //               }
// //               return Container(
// //                 margin: const EdgeInsets.symmetric(horizontal: 16),
// //                 child: SizedBox(
// //                   height: 150.h,
// //                   child: ListView.builder(
// //                     scrollDirection: Axis.horizontal,
// //                     padding:
// //                         const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
// //                     itemCount: controller.trendingBooks.length,
// //                     itemBuilder: (context, index) {
// //                       final book = controller.trendingBooks[index];
// //                       return GestureDetector(
// //                         onTap: () async {
// //                           await UserStorage.saveBookId(book.id ?? '');
// //                           context.push('/book_details_screen');
// //                         },
// //                         child: Container(
// //                           margin: const EdgeInsets.only(right: 12),
// //                           decoration: BoxDecoration(
// //                             color: const Color(0xFFE3F2FD),
// //                             borderRadius: BorderRadius.circular(12),
// //                           ),
// //                           padding: const EdgeInsets.all(14),
// //                           width: 340.w,
// //                           child: Row(
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               ClipRRect(
// //                                 borderRadius: BorderRadius.circular(8),
// //                                 child: Image.network(
// //                                   book.coverImage ?? '',
// //                                   width: 85,
// //                                   height: 120,
// //                                   fit: BoxFit.cover,
// //                                 ),
// //                               ),
// //                               const SizedBox(width: 14),
// //                               Expanded(
// //                                 child: Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   mainAxisAlignment:
// //                                       MainAxisAlignment.spaceBetween,
// //                                   children: [
// //                                     Column(
// //                                       crossAxisAlignment:
// //                                           CrossAxisAlignment.start,
// //                                       children: [
// //                                         Text(
// //                                           book.title ?? '',
// //                                           style: const TextStyle(
// //                                             fontSize: 16,
// //                                             fontWeight: FontWeight.bold,
// //                                             color: Colors.black,
// //                                           ),
// //                                           maxLines: 2,
// //                                           overflow: TextOverflow.ellipsis,
// //                                         ),
// //                                         const SizedBox(height: 6),
// //                                         Text(
// //                                           'By : ${book.author ?? ''}',
// //                                           style: TextStyle(
// //                                             fontSize: 13,
// //                                             color: Colors.grey.shade600,
// //                                           ),
// //                                           maxLines: 1,
// //                                           overflow: TextOverflow.ellipsis,
// //                                         ),
// //                                         const SizedBox(height: 10),
// //                                         Text(
// //                                           'Price : Free',
// //                                           style: TextStyle(
// //                                             fontSize: 14,
// //                                             fontWeight: FontWeight.w600,
// //                                             color: Colors.green.shade700,
// //                                           ),
// //                                         ),
// //                                       ],
// //                                     ),
// //                                     Row(
// //                                       children: [
// //                                         Icon(
// //                                           Icons.star,
// //                                           color: Colors.blue.shade700,
// //                                           size: 18,
// //                                         ),
// //                                         const SizedBox(width: 4),
// //                                         Text(
// //                                           book.averageRating
// //                                                   ?.toStringAsFixed(1) ??
// //                                               '0.0',
// //                                           style: const TextStyle(
// //                                             fontSize: 14,
// //                                             fontWeight: FontWeight.bold,
// //                                             color: Colors.black,
// //                                           ),
// //                                         ),
// //                                         const SizedBox(width: 4),
// //                                         Text(
// //                                           book.totalReviews
// //                                                   ?.toStringAsFixed(1) ??
// //                                               '(0 ratings)',
// //                                           style: TextStyle(
// //                                             fontSize: 12,
// //                                             color: Colors.grey.shade600,
// //                                           ),
// //                                         ),
// //                                       ],
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       );
// //                     },
// //                   ),
// //                 ),
// //               );
// //             }),
// //           ],
// //         ),
// //       ),
// //       floatingActionButton: Container(
// //         height: 60,
// //         // child: IconButton(onPressed: (){context.push('/advise_screen');}, icon: SvgPicture.asset("assets/icons/botchat.svg")),
// //         child: FloatingActionButton(
// //           onPressed: () {
// //             context.push('/advise_screen');
// //           },
// //           child: SvgPicture.asset("assets/icons/botchat.svg"),
// //         ),
// //       ),
// //       // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
// //     );
// //   }
// // }
//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:go_router/go_router.dart';
// import 'package:sach_hay/controllers/home_controller.dart';
// import 'package:sach_hay/core/theme/app_colors.dart';
// import 'package:sach_hay/core/theme/app_sizes.dart';
// import 'package:sach_hay/core/theme/app_text_styles.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// import '../../data/storage/user_storage.dart';
// import '../widget/category_item.dart';
// import '../widget/skeleton_home_screen.dart';
//
// class HomeScreen extends StatelessWidget {
//   static const String homeScreen = '/home_screen';
//   HomeScreen({super.key});
//   final controller = Get.put(HomeController());
//   final PageController _pageController = PageController();
//   final List<Map<String, dynamic>> categories = [
//     {
//       'icon': 'assets/images/technology.png',
//       'label': 'Tất cả',
//       'route': '/bookscreen'
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     final HomeController controller = Get.put(HomeController());
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // ✅ PHẦN HEADER CỐ ĐỊNH (Không scroll)
//           Container(
//             color: AppColors.primary,
//             child: SafeArea(
//               bottom: false,
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//                 child: Container(
//                   margin: EdgeInsets.only(
//                       left: AppSizes.space8, right: AppSizes.space8),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Hàng đầu tiên: avatar + chuông
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Text(
//                             "Sách hay",
//                             style: AppTextStyles.h4
//                                 .copyWith(color: AppColors.white),
//                           ),
//                           SizedBox(width: AppSizes.space104),
//                           CircleAvatar(
//                             radius: AppSizes.radius20,
//                             backgroundColor: AppColors.grey200,
//                             child: Icon(Icons.person,
//                                 color: AppColors.grey600,
//                                 size: AppSizes.icon24),
//                           ),
//                         ],
//                       ),
//
//                       SizedBox(height: AppSizes.space32),
//
//                       Center(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Obx(
//                               () => Text(
//                                 controller.greeting.value,
//                                 style: AppTextStyles.h4
//                                     .copyWith(color: AppColors.white),
//                               ),
//                             ),
//                             const SizedBox(height: 4),
//                             Text(
//                               'Khám phá những câu chuyện mới.',
//                               style: AppTextStyles.bodyMedium
//                                   .copyWith(color: AppColors.white),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                       SizedBox(height: AppSizes.space24),
//
//                       // TextField tìm kiếm
//                       GestureDetector(
//                         onTap: () => context.push('/search'),
//                         child: Center(
//                           child:
//                               Stack(alignment: Alignment.centerLeft, children: [
//                             Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(16),
//                                 color: Colors.white,
//                               ),
//                               height: 40,
//                               width: double.infinity,
//                             ),
//                             const Padding(
//                               padding: EdgeInsets.only(left: 16),
//                               child: Icon(
//                                 Icons.search,
//                                 color: AppColors.black,
//                                 size: 28,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 56),
//                               child: Text(
//                                 'Tìm kiếm sách, tác giả, thể loại...',
//                                 style: AppTextStyles.bodyMedium
//                                     .copyWith(color: AppColors.grey600),
//                               ),
//                             ),
//                           ]),
//                         ),
//                       ),
//
//                       SizedBox(height: AppSizes.space24),
//
//                       Text(
//                         "Khám phá",
//                         style: AppTextStyles.bodyMedium
//                             .copyWith(color: AppColors.white),
//                       ),
//                       SizedBox(height: AppSizes.space12),
//
//                       SizedBox(
//                         height: 36,
//                         child: ListView.separated(
//                           scrollDirection: Axis.horizontal,
//                           itemCount: categories.length,
//                           separatorBuilder: (_, __) =>
//                               const SizedBox(width: 12),
//                           itemBuilder: (context, index) {
//                             final c = categories[index];
//                             return CategoryItem(
//                               icon: c['icon'],
//                               label: c['label'],
//                               route: c['route'],
//                             );
//                           },
//                         ),
//                       ),
//                       SizedBox(height: AppSizes.space12),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//
//           // ✅ PHẦN NỘI DUNG SCROLL ĐƯỢC
//           Expanded(
//             child: RefreshIndicator(
//               onRefresh: () => controller.refreshAll(),
//               child: SingleChildScrollView(
//                 physics: const AlwaysScrollableScrollPhysics(),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(height: AppSizes.space12),
//
//                     // Banner Section
//                     Obx(() {
//                       if (!controller.hasLoadedBanners.value) {
//                         return const BannerSkeleton();
//                       }
//
//                       if (controller.banners.isEmpty) {
//                         return const Center(
//                           child: Padding(
//                             padding: EdgeInsets.all(16.0),
//                             child: Text("Không có banner"),
//                           ),
//                         );
//                       }
//
//                       return Center(
//                         child: Column(
//                           children: [
//                             Container(
//                               margin:
//                                   const EdgeInsets.symmetric(horizontal: 16),
//                               child: SizedBox(
//                                   height: 180.h,
//                                   width: double.infinity,
//                                   child: PageView.builder(
//                                       controller: _pageController,
//                                       itemCount: controller.banners.length,
//                                       itemBuilder: (context, index) {
//                                         final banner =
//                                             controller.banners[index];
//                                         return Padding(
//                                           padding: const EdgeInsets.symmetric(
//                                               horizontal: 8),
//                                           child: ClipRRect(
//                                             borderRadius:
//                                                 BorderRadius.circular(24),
//                                             child: Image.network(
//                                               banner.imageUrl ?? '',
//                                               height: 160.h,
//                                               width: double.infinity,
//                                               fit: BoxFit.cover,
//                                               errorBuilder:
//                                                   (context, error, stackTrace) {
//                                                 return Container(
//                                                   color: Colors.grey[300],
//                                                   child: const Center(
//                                                     child: Icon(Icons.error),
//                                                   ),
//                                                 );
//                                               },
//                                             ),
//                                           ),
//                                         );
//                                       })),
//                             ),
//                             const SizedBox(height: 12),
//                             SizedBox(
//                               height: 20,
//                               child: SmoothPageIndicator(
//                                 controller: _pageController,
//                                 count: controller.banners.length,
//                                 effect: WormEffect(
//                                   activeDotColor: Colors.blueAccent,
//                                   dotColor: Colors.grey.shade300,
//                                   dotHeight: 8,
//                                   dotWidth: 8,
//                                   spacing: 6,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     }),
//
//                     SizedBox(height: AppSizes.space24),
//
//                     // Sách mới thêm
//                     Container(
//                       margin: const EdgeInsets.symmetric(horizontal: 16),
//                       child: Padding(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: AppSizes.space16),
//                         child: Text(
//                           'Sách mới thêm',
//                           style: AppTextStyles.h5
//                               .copyWith(color: AppColors.grey600),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: AppSizes.space12),
//
//                     // New Books Section
//                     Obx(() {
//                       if (controller.isNewBooksLoading.value &&
//                           !controller.hasLoadedNewBooks.value) {
//                         return const NewBooksSkeleton();
//                       }
//
//                       if (controller.hasLoadedNewBooks.value &&
//                           controller.newBooks.isEmpty) {
//                         return const Center(
//                           child: Padding(
//                             padding: EdgeInsets.all(16.0),
//                             child: Text('Không có sách mới'),
//                           ),
//                         );
//                       }
//
//                       return Container(
//                           height: 194.h,
//                           padding: const EdgeInsets.symmetric(horizontal: 16),
//                           child: ListView.builder(
//                             scrollDirection: Axis.horizontal,
//                             itemCount: controller.newBooks.length,
//                             itemBuilder: (context, index) {
//                               final newBook = controller.newBooks[index];
//                               return GestureDetector(
//                                 onTap: () async {
//                                   await UserStorage.saveBookId(
//                                       newBook.id ?? '');
//                                   context.push('/book_details_screen');
//                                 },
//                                 child: Container(
//                                   margin:
//                                       const EdgeInsets.symmetric(horizontal: 6),
//                                   decoration: BoxDecoration(
//                                     color: AppColors.white,
//                                     borderRadius: BorderRadius.circular(8),
//                                     boxShadow: [
//                                       BoxShadow(
//                                         color: Colors.grey.withOpacity(0.2),
//                                         blurRadius: 4,
//                                         offset: const Offset(0, 2),
//                                       ),
//                                     ],
//                                   ),
//                                   padding: const EdgeInsets.all(6),
//                                   width: 110.w,
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       ClipRRect(
//                                         borderRadius: BorderRadius.circular(8),
//                                         child: Image.network(
//                                           newBook.coverImage ?? '',
//                                           width: 98,
//                                           height: 120,
//                                           fit: BoxFit.cover,
//                                           errorBuilder:
//                                               (context, error, stackTrace) {
//                                             return Container(
//                                               width: 98,
//                                               height: 120,
//                                               color: Colors.grey[300],
//                                               child: const Icon(Icons.book),
//                                             );
//                                           },
//                                         ),
//                                       ),
//                                       const SizedBox(height: 6),
//                                       SizedBox(
//                                         width: 98,
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           mainAxisSize: MainAxisSize.min,
//                                           children: [
//                                             Text(
//                                               newBook.title ?? '',
//                                               style: const TextStyle(
//                                                 fontSize: 12,
//                                                 fontWeight: FontWeight.bold,
//                                               ),
//                                               maxLines: 1,
//                                               overflow: TextOverflow.ellipsis,
//                                             ),
//                                             Text(
//                                               newBook.author ?? '',
//                                               style: const TextStyle(
//                                                 color: Colors.grey,
//                                                 fontSize: 11,
//                                               ),
//                                               maxLines: 1,
//                                               overflow: TextOverflow.ellipsis,
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               );
//                             },
//                           ));
//                     }),
//
//                     SizedBox(height: AppSizes.space32),
//
//                     // Sách nổi bật
//                     Container(
//                       margin: const EdgeInsets.symmetric(horizontal: 16),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Sách nổi bật',
//                               style: AppTextStyles.h5,
//                             ),
//                             InkWell(
//                               child: Text('Tất cả',
//                                   style: AppTextStyles.h6
//                                       .copyWith(color: AppColors.primaryLight)),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//
//                     // Trending Books Section
//                     Obx(() {
//                       if (controller.isTrendingBooksLoading.value &&
//                           !controller.hasLoadedTrendingBooks.value) {
//                         return const TrendingBooksSkeleton();
//                       }
//
//                       if (controller.hasLoadedTrendingBooks.value &&
//                           controller.trendingBooks.isEmpty) {
//                         return const Center(
//                           child: Padding(
//                             padding: EdgeInsets.all(16.0),
//                             child: Text('Không có sách nổi bật'),
//                           ),
//                         );
//                       }
//
//                       return Container(
//                         margin: const EdgeInsets.symmetric(horizontal: 16),
//                         child: SizedBox(
//                           height: 150.h,
//                           child: ListView.builder(
//                             scrollDirection: Axis.horizontal,
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 4, vertical: 4),
//                             itemCount: controller.trendingBooks.length,
//                             itemBuilder: (context, index) {
//                               final book = controller.trendingBooks[index];
//                               return GestureDetector(
//                                 onTap: () async {
//                                   await UserStorage.saveBookId(book.id ?? '');
//                                   context.push('/book_details_screen');
//                                 },
//                                 child: Container(
//                                   margin: const EdgeInsets.only(right: 12),
//                                   decoration: BoxDecoration(
//                                     color: const Color(0xFFE3F2FD),
//                                     borderRadius: BorderRadius.circular(12),
//                                   ),
//                                   padding: const EdgeInsets.all(14),
//                                   width: 340.w,
//                                   child: Row(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       ClipRRect(
//                                         borderRadius: BorderRadius.circular(8),
//                                         child: Image.network(
//                                           book.coverImage ?? '',
//                                           width: 85,
//                                           height: 120,
//                                           fit: BoxFit.cover,
//                                           errorBuilder:
//                                               (context, error, stackTrace) {
//                                             return Container(
//                                               width: 85,
//                                               height: 120,
//                                               color: Colors.grey[300],
//                                               child: const Icon(Icons.book),
//                                             );
//                                           },
//                                         ),
//                                       ),
//                                       const SizedBox(width: 14),
//                                       Expanded(
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Text(
//                                                   book.title ?? '',
//                                                   style: const TextStyle(
//                                                     fontSize: 16,
//                                                     fontWeight: FontWeight.bold,
//                                                     color: Colors.black,
//                                                   ),
//                                                   maxLines: 2,
//                                                   overflow:
//                                                       TextOverflow.ellipsis,
//                                                 ),
//                                                 const SizedBox(height: 6),
//                                                 Text(
//                                                   'By : ${book.author ?? ''}',
//                                                   style: TextStyle(
//                                                     fontSize: 13,
//                                                     color: Colors.grey.shade600,
//                                                   ),
//                                                   maxLines: 1,
//                                                   overflow:
//                                                       TextOverflow.ellipsis,
//                                                 ),
//                                                 const SizedBox(height: 10),
//                                                 Text(
//                                                   'Price : Free',
//                                                   style: TextStyle(
//                                                     fontSize: 14,
//                                                     fontWeight: FontWeight.w600,
//                                                     color:
//                                                         Colors.green.shade700,
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                             Row(
//                                               children: [
//                                                 Icon(
//                                                   Icons.star,
//                                                   color: Colors.blue.shade700,
//                                                   size: 18,
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Text(
//                                                   book.averageRating
//                                                           ?.toStringAsFixed(
//                                                               1) ??
//                                                       '0.0',
//                                                   style: const TextStyle(
//                                                     fontSize: 14,
//                                                     fontWeight: FontWeight.bold,
//                                                     color: Colors.black,
//                                                   ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Text(
//                                                   book.totalReviews
//                                                           ?.toStringAsFixed(
//                                                               1) ??
//                                                       '(0 ratings)',
//                                                   style: TextStyle(
//                                                     fontSize: 12,
//                                                     color: Colors.grey.shade600,
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               );
//                             },
//                           ),
//                         ),
//                       );
//                     }),
//
//                     // Thêm padding bottom để tránh bị che bởi FAB
//                     const SizedBox(height: 80),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: Container(
//         height: 60,
//         child: FloatingActionButton(
//           onPressed: () {
//             context.push('/advise_screen');
//           },
//           child: SvgPicture.asset("assets/icons/botchat.svg"),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:sach_hay/controllers/home_controller.dart';
import 'package:sach_hay/core/theme/app_colors.dart';
import 'package:sach_hay/core/theme/app_sizes.dart';
import 'package:sach_hay/core/theme/app_text_styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../data/storage/user_storage.dart';
import '../widget/category_item.dart';
import '../widget/skeleton_home_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String homeScreen = '/home_screen';
  HomeScreen({super.key});
  final controller = Get.put(HomeController());
  final PageController _pageController = PageController();
  final List<Map<String, dynamic>> categories = [
    {
      'icon': 'assets/images/technology.png',
      'label': 'Tất cả',
      'route': '/bookscreen'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: () => controller.refreshAll(),
        child: CustomScrollView(
          slivers: [
            // ✅ SliverAppBar - Phần này sẽ scroll và pin lại
            SliverAppBar(
              backgroundColor: AppColors.primary,
              pinned: true, // ✅ Giữ lại khi scroll
              expandedHeight: 280, // ✅ Chiều cao khi mở rộng
              flexibleSpace: FlexibleSpaceBar(
                background: SafeArea(
                  bottom: false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Container(
                      margin: EdgeInsets.only(
                          left: AppSizes.space8, right: AppSizes.space8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Hàng đầu tiên: avatar + tên app
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Sách hay",
                                style: AppTextStyles.h4
                                    .copyWith(color: AppColors.white),
                              ),
                              SizedBox(width: AppSizes.space104),
                              CircleAvatar(
                                radius: AppSizes.radius20,
                                backgroundColor: AppColors.grey200,
                                child: Icon(Icons.person,
                                    color: AppColors.grey600,
                                    size: AppSizes.icon24),
                              ),
                            ],
                          ),

                          SizedBox(height: AppSizes.space32),

                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Obx(
                                  () => Text(
                                    controller.greeting.value,
                                    style: AppTextStyles.h4
                                        .copyWith(color: AppColors.white),
                                  ),
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

                          SizedBox(height: AppSizes.space24),

                          // TextField tìm kiếm
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // ✅ Phần bottom luôn hiển thị khi pinned
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(60),
                child: Container(
                  color: AppColors.primary,
                  padding: EdgeInsets.only(
                    left: AppSizes.space24,
                    right: AppSizes.space24,
                    bottom: AppSizes.space12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => context.push('/search'),
                        child: Center(
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                              ),
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
                        ),
                      ),
                      Text(
                        "Khám phá",
                        style: AppTextStyles.bodyMedium
                            .copyWith(color: AppColors.white),
                      ),
                      SizedBox(height: AppSizes.space12),
                      SizedBox(
                        height: 36,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          separatorBuilder: (_, __) =>
                              const SizedBox(width: 12),
                          itemBuilder: (context, index) {
                            final c = categories[index];
                            return CategoryItem(
                              icon: c['icon'],
                              label: c['label'],
                              route: c['route'],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // ✅ Phần content scroll tiếp
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: AppSizes.space12),

                  // Banner Section
                  Obx(() {
                    if (!controller.hasLoadedBanners.value) {
                      return const BannerSkeleton();
                    }

                    if (controller.banners.isEmpty) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text("Không có banner"),
                        ),
                      );
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
                                    itemBuilder: (context, index) {
                                      final banner = controller.banners[index];
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(24),
                                          child: Image.network(
                                            banner.imageUrl ?? '',
                                            height: 160.h,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                              return Container(
                                                color: Colors.grey[300],
                                                child: const Center(
                                                  child: Icon(Icons.error),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      );
                                    })),
                          ),
                          const SizedBox(height: 12),
                          SizedBox(
                            height: 20,
                            child: SmoothPageIndicator(
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
                          ),
                        ],
                      ),
                    );
                  }),

                  SizedBox(height: AppSizes.space24),

                  // Sách mới thêm
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: AppSizes.space16),
                      child: Text(
                        'Sách mới thêm',
                        style:
                            AppTextStyles.h5.copyWith(color: AppColors.grey600),
                      ),
                    ),
                  ),
                  SizedBox(height: AppSizes.space12),

                  // New Books Section
                  Obx(() {
                    if (controller.isNewBooksLoading.value &&
                        !controller.hasLoadedNewBooks.value) {
                      return const NewBooksSkeleton();
                    }

                    if (controller.hasLoadedNewBooks.value &&
                        controller.newBooks.isEmpty) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text('Không có sách mới'),
                        ),
                      );
                    }

                    return Container(
                        height: 194.h,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
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
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 6),
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
                                padding: const EdgeInsets.all(6),
                                width: 110.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        newBook.coverImage ?? '',
                                        width: 98,
                                        height: 120,
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                          return Container(
                                            width: 98,
                                            height: 120,
                                            color: Colors.grey[300],
                                            child: const Icon(Icons.book),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    SizedBox(
                                      width: 98,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            newBook.title ?? '',
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Text(
                                            newBook.author ?? '',
                                            style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 11,
                                            ),
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

                  SizedBox(height: AppSizes.space32),

                  // Sách nổi bật
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sách nổi bật',
                            style: AppTextStyles.h5,
                          ),
                          InkWell(
                            child: Text('Tất cả',
                                style: AppTextStyles.h6
                                    .copyWith(color: AppColors.primaryLight)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Trending Books Section
                  Obx(() {
                    if (controller.isTrendingBooksLoading.value &&
                        !controller.hasLoadedTrendingBooks.value) {
                      return const TrendingBooksSkeleton();
                    }

                    if (controller.hasLoadedTrendingBooks.value &&
                        controller.trendingBooks.isEmpty) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text('Không có sách nổi bật'),
                        ),
                      );
                    }

                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      child: SizedBox(
                        height: 150.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 4),
                          itemCount: controller.trendingBooks.length,
                          itemBuilder: (context, index) {
                            final book = controller.trendingBooks[index];
                            return GestureDetector(
                              onTap: () async {
                                await UserStorage.saveBookId(book.id ?? '');
                                context.push('/book_details_screen');
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 12),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE3F2FD),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.all(14),
                                width: 340.w,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        book.coverImage ?? '',
                                        width: 85,
                                        height: 120,
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                          return Container(
                                            width: 85,
                                            height: 120,
                                            color: Colors.grey[300],
                                            child: const Icon(Icons.book),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(width: 14),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                book.title ?? '',
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              const SizedBox(height: 6),
                                              Text(
                                                'By : ${book.author ?? ''}',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey.shade600,
                                                ),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              const SizedBox(height: 10),
                                              Text(
                                                'Price : Free',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.green.shade700,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.blue.shade700,
                                                size: 18,
                                              ),
                                              const SizedBox(width: 4),
                                              Text(
                                                book.averageRating
                                                        ?.toStringAsFixed(1) ??
                                                    '0.0',
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              const SizedBox(width: 4),
                                              Text(
                                                book.totalReviews
                                                        ?.toStringAsFixed(1) ??
                                                    '(0 ratings)',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey.shade600,
                                                ),
                                              ),
                                            ],
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

                  // Padding bottom để tránh FAB
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 60,
        child: FloatingActionButton(
          onPressed: () {
            context.push('/advise_screen');
          },
          child: SvgPicture.asset("assets/icons/botchat.svg"),
        ),
      ),
    );
  }
}
