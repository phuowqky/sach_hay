// // // import 'package:app_bong_da/controllers/book_controller.dart';
// // // import 'package:app_bong_da/controllers/home_controller.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';

// // // class HomePage extends StatefulWidget {
// // //   const HomePage({Key? key}) : super(key: key);
// // //   static const String homePage = "/home_page";
// // //   // static const String homePage = "/";

// // //   @override
// // //   State<HomePage> createState() => _HomePageState();
// // // }

// // // class _HomePageState extends State<HomePage> {
// // //   final HomeController controller = Get.put(HomeController());
// // //   final BookController bookscontroller = Get.put(BookController());

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.grey[50],
// // //       appBar: PreferredSize(
// // //         preferredSize: const Size.fromHeight(70),
// // //         child: AppBar(
// // //           backgroundColor: Colors.white,
// // //           elevation: 0,
// // //           flexibleSpace: SafeArea(
// // //             child: Padding(
// // //               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// // //               child: Row(
// // //                 children: [
// // //                   // Search TextField
// // //                   Expanded(
// // //                     child: Container(
// // //                       height: 45,
// // //                       decoration: BoxDecoration(
// // //                         color: Colors.grey[100],
// // //                         borderRadius: BorderRadius.circular(25),
// // //                         border: Border.all(color: Colors.grey[300]!),
// // //                       ),
// // //                       child: TextField(
// // //                         controller: controller.searchController,
// // //                         onChanged: (value) => controller.searchBooks(value),
// // //                         decoration: InputDecoration(
// // //                           hintText: 'Tìm kiếm sách...',
// // //                           hintStyle: TextStyle(
// // //                             color: Colors.grey[600],
// // //                             fontSize: 14,
// // //                           ),
// // //                           prefixIcon: Icon(
// // //                             Icons.search,
// // //                             color: Colors.grey[600],
// // //                             size: 22,
// // //                           ),
// // //                           border: InputBorder.none,
// // //                           contentPadding: const EdgeInsets.symmetric(
// // //                             horizontal: 16,
// // //                             vertical: 12,
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                   const SizedBox(width: 12),
// // //                   // User Avatar
// // //                   InkWell(
// // //                     onTap: () {
// // //                       bookscontroller.getBooks();
// // //                     },
// // //                     child: Container(
// // //                       width: 45,
// // //                       height: 45,
// // //                       decoration: BoxDecoration(
// // //                         shape: BoxShape.circle,
// // //                         gradient: LinearGradient(
// // //                           colors: [Colors.blue[400]!, Colors.blue[600]!],
// // //                           begin: Alignment.topLeft,
// // //                           end: Alignment.bottomRight,
// // //                         ),
// // //                       ),
// // //                       child: const Icon(
// // //                         Icons.person,
// // //                         color: Colors.white,
// // //                         size: 24,
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //       body: Column(
// // //         crossAxisAlignment: CrossAxisAlignment.start,
// // //         children: [
// // //           const SizedBox(height: 20),

// // //           // Categories Section
// // //           const Padding(
// // //             padding: EdgeInsets.symmetric(horizontal: 16),
// // //             child: Text(
// // //               'Categories',
// // //               style: TextStyle(
// // //                 fontSize: 20,
// // //                 fontWeight: FontWeight.bold,
// // //                 color: Colors.black87,
// // //               ),
// // //             ),
// // //           ),
// // //           const SizedBox(height: 16),

// // //           // Categories Horizontal Scroll
// // //           SizedBox(
// // //             height: 40,
// // //             child: Obx(() => ListView.builder(
// // //                   scrollDirection: Axis.horizontal,
// // //                   padding: const EdgeInsets.symmetric(horizontal: 16),
// // //                   itemCount: controller.categories.length,
// // //                   itemBuilder: (context, index) {
// // //                     final category = controller.categories[index];
// // //                     final isSelected =
// // //                         controller.selectedCategory.value == category;

// // //                     return GestureDetector(
// // //                       onTap: () => controller.selectCategory(category),
// // //                       child: Container(
// // //                         margin: const EdgeInsets.only(right: 12),
// // //                         padding: const EdgeInsets.symmetric(
// // //                           horizontal: 20,
// // //                           vertical: 10,
// // //                         ),
// // //                         decoration: BoxDecoration(
// // //                           color: isSelected ? Colors.blue[600] : Colors.white,
// // //                           borderRadius: BorderRadius.circular(20),
// // //                           border: Border.all(
// // //                             color: isSelected
// // //                                 ? Colors.blue[600]!
// // //                                 : Colors.grey[300]!,
// // //                           ),
// // //                           boxShadow: [
// // //                             BoxShadow(
// // //                               color: Colors.black.withOpacity(0.05),
// // //                               blurRadius: 4,
// // //                               offset: const Offset(0, 2),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                         child: Text(
// // //                           category,
// // //                           style: TextStyle(
// // //                             color: isSelected ? Colors.white : Colors.grey[700],
// // //                             fontWeight:
// // //                                 isSelected ? FontWeight.w600 : FontWeight.w500,
// // //                             fontSize: 14,
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     );
// // //                   },
// // //                 )),
// // //           ),

// // //           const SizedBox(height: 24),

// // //           // Books Grid
// // //           Expanded(
// // //             child: Obx(() => Padding(
// // //                   padding: const EdgeInsets.symmetric(horizontal: 16),
// // //                   child: GridView.builder(
// // //                     physics: const BouncingScrollPhysics(),
// // //                     gridDelegate:
// // //                         const SliverGridDelegateWithFixedCrossAxisCount(
// // //                       crossAxisCount: 2,
// // //                       childAspectRatio: 0.5,
// // //                       crossAxisSpacing: 16,
// // //                       mainAxisSpacing: 16,
// // //                     ),
// // //                     itemCount: controller.filteredBooks.length,
// // //                     itemBuilder: (context, index) {
// // //                       final book = controller.filteredBooks[index];

// // //                       return Container(
// // //                         decoration: BoxDecoration(
// // //                           color: Colors.white,
// // //                           borderRadius: BorderRadius.circular(12),
// // //                           boxShadow: [
// // //                             BoxShadow(
// // //                               color: Colors.black.withOpacity(0.08),
// // //                               blurRadius: 8,
// // //                               offset: const Offset(0, 2),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                         child: Column(
// // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // //                           children: [
// // //                             // Book Cover
// // //                             Expanded(
// // //                               flex: 3,
// // //                               child: Stack(
// // //                                 children: [
// // //                                   Container(
// // //                                     width: double.infinity,
// // //                                     // decoration: BoxDecoration(
// // //                                     //   borderRadius: const BorderRadius.only(
// // //                                     //     topLeft: Radius.circular(12),
// // //                                     //     topRight: Radius.circular(12),
// // //                                     //   ),
// // //                                     //   // gradient: LinearGradient(
// // //                                     //   //   colors: [
// // //                                     //   //     Colors.blue[200]!,
// // //                                     //   //     Colors.purple[200]!,
// // //                                     //   //     Colors.pink[200]!,
// // //                                     //   //   ][index % 3],
// // //                                     //   //   begin: Alignment.topLeft,
// // //                                     //   //   end: Alignment.bottomRight,
// // //                                     //   // ),
// // //                                     // ),
// // //                                     child: Icon(
// // //                                       Icons.menu_book,
// // //                                       size: 50,
// // //                                       color: Colors.white.withOpacity(0.8),
// // //                                     ),
// // //                                   ),
// // //                                   // Favorite Button
// // //                                   Positioned(
// // //                                     top: 8,
// // //                                     right: 8,
// // //                                     child: GestureDetector(
// // //                                       onTap: () => controller
// // //                                           .toggleFavorite(book['title']),
// // //                                       child: Container(
// // //                                         padding: const EdgeInsets.all(6),
// // //                                         decoration: BoxDecoration(
// // //                                           color: Colors.white.withOpacity(0.9),
// // //                                           shape: BoxShape.circle,
// // //                                         ),
// // //                                         child: Icon(
// // //                                           controller.isFavorite(book['title'])
// // //                                               ? Icons.favorite
// // //                                               : Icons.favorite_border,
// // //                                           size: 18,
// // //                                           color: controller
// // //                                                   .isFavorite(book['title'])
// // //                                               ? Colors.red[400]
// // //                                               : Colors.grey[600],
// // //                                         ),
// // //                                       ),
// // //                                     ),
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                             ),

// // //                             // Book Info
// // //                             Expanded(
// // //                               flex: 2,
// // //                               child: Padding(
// // //                                 padding: const EdgeInsets.all(12),
// // //                                 child: Column(
// // //                                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                                   children: [
// // //                                     // Book Title
// // //                                     Text(
// // //                                       book['title'],
// // //                                       style: const TextStyle(
// // //                                         fontSize: 14,
// // //                                         fontWeight: FontWeight.bold,
// // //                                         color: Colors.black87,
// // //                                       ),
// // //                                       maxLines: 2,
// // //                                       overflow: TextOverflow.ellipsis,
// // //                                     ),
// // //                                     const SizedBox(height: 4),

// // //                                     // Author
// // //                                     Text(
// // //                                       book['author'],
// // //                                       style: TextStyle(
// // //                                         fontSize: 12,
// // //                                         color: Colors.grey[600],
// // //                                         fontWeight: FontWeight.w500,
// // //                                       ),
// // //                                       maxLines: 1,
// // //                                       overflow: TextOverflow.ellipsis,
// // //                                     ),

// // //                                     const Spacer(),

// // //                                     // Category Badge
// // //                                     Container(
// // //                                       padding: const EdgeInsets.symmetric(
// // //                                         horizontal: 8,
// // //                                         vertical: 4,
// // //                                       ),
// // //                                       decoration: BoxDecoration(
// // //                                         color: Colors.blue[50],
// // //                                         borderRadius: BorderRadius.circular(12),
// // //                                       ),
// // //                                       child: Text(
// // //                                         book['category'],
// // //                                         style: TextStyle(
// // //                                           fontSize: 10,
// // //                                           color: Colors.blue[700],
// // //                                           fontWeight: FontWeight.w600,
// // //                                         ),
// // //                                       ),
// // //                                     ),
// // //                                   ],
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       );
// // //                     },
// // //                   ),
// // //                 )),
// // //           ),
// // //         ],
// // //       ),

// // //       // Bottom Navigation
// // //       bottomNavigationBar: Container(
// // //         height: 70,
// // //         decoration: BoxDecoration(
// // //           color: Colors.white,
// // //           boxShadow: [
// // //             BoxShadow(
// // //               color: Colors.black.withOpacity(0.1),
// // //               blurRadius: 10,
// // //               offset: const Offset(0, -2),
// // //             ),
// // //           ],
// // //         ),
// // //         child: Row(
// // //           mainAxisAlignment: MainAxisAlignment.spaceAround,
// // //           children: [
// // //             _buildBottomNavItem(Icons.home, 'Home', true),
// // //             _buildBottomNavItem(Icons.explore_outlined, 'Explore', false),
// // //             _buildBottomNavItem(Icons.settings_outlined, 'Settings', false),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildBottomNavItem(IconData icon, String label, bool isActive) {
// // //     return Column(
// // //       mainAxisAlignment: MainAxisAlignment.center,
// // //       children: [
// // //         Icon(
// // //           icon,
// // //           color: isActive ? Colors.blue[600] : Colors.grey[500],
// // //           size: 24,
// // //         ),
// // //         const SizedBox(height: 4),
// // //         Text(
// // //           label,
// // //           style: TextStyle(
// // //             fontSize: 12,
// // //             color: isActive ? Colors.blue[600] : Colors.grey[500],
// // //             fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }

// // import 'package:app_bong_da/controllers/book_controller.dart';
// // import 'package:app_bong_da/controllers/home_controller.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';

// // class BookScreen extends StatefulWidget {
// //   const BookScreen({Key? key}) : super(key: key);
// //   static const String homePage = "/home_page";
// //   // static const String homePage = "/";

// //   @override
// //   State<BookScreen> createState() => _BookScreenState();
// // }

// // class _BookScreenState extends State<BookScreen> {
// //   final HomeController controller = Get.put(HomeController());
// //   final BookController bookscontroller = Get.put(BookController());

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.grey[50],
// //       appBar: PreferredSize(
// //         preferredSize: const Size.fromHeight(70),
// //         child: AppBar(
// //           backgroundColor: Colors.white,
// //           elevation: 0,
// //           flexibleSpace: SafeArea(
// //             child: Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// //               child: Row(
// //                 children: [
// //                   // Search TextField
// //                   Expanded(
// //                     child: Container(
// //                       height: 45,
// //                       decoration: BoxDecoration(
// //                         color: Colors.grey[100],
// //                         borderRadius: BorderRadius.circular(25),
// //                         border: Border.all(color: Colors.grey[300]!),
// //                       ),
// //                       child: TextField(
// //                         controller: controller.searchController,
// //                         onChanged: (value) => controller.searchBooks(value),
// //                         decoration: InputDecoration(
// //                           hintText: 'Tìm kiếm sách...',
// //                           hintStyle: TextStyle(
// //                             color: Colors.grey[600],
// //                             fontSize: 14,
// //                           ),
// //                           prefixIcon: Icon(
// //                             Icons.search,
// //                             color: Colors.grey[600],
// //                             size: 22,
// //                           ),
// //                           border: InputBorder.none,
// //                           contentPadding: const EdgeInsets.symmetric(
// //                             horizontal: 16,
// //                             vertical: 12,
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                   const SizedBox(width: 12),
// //                   // User Avatar
// //                   InkWell(
// //                     onTap: () {
// //                       bookscontroller.getBooks();
// //                     },
// //                     child: Container(
// //                       width: 45,
// //                       height: 45,
// //                       decoration: BoxDecoration(
// //                         shape: BoxShape.circle,
// //                         gradient: LinearGradient(
// //                           colors: [Colors.blue[400]!, Colors.blue[600]!],
// //                           begin: Alignment.topLeft,
// //                           end: Alignment.bottomRight,
// //                         ),
// //                       ),
// //                       child: const Icon(
// //                         Icons.person,
// //                         color: Colors.white,
// //                         size: 24,
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //       body: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           const SizedBox(height: 20),

// //           // Categories Section
// //           const Padding(
// //             padding: EdgeInsets.symmetric(horizontal: 16),
// //             child: Text(
// //               'Categories',
// //               style: TextStyle(
// //                 fontSize: 20,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.black87,
// //               ),
// //             ),
// //           ),
// //           const SizedBox(height: 16),

// //           // Categories Horizontal Scroll
// //           SizedBox(
// //             height: 40,
// //             child: Obx(() => ListView.builder(
// //                   scrollDirection: Axis.horizontal,
// //                   padding: const EdgeInsets.symmetric(horizontal: 16),
// //                   itemCount: controller.categories.length,
// //                   itemBuilder: (context, index) {
// //                     final category = controller.categories[index];
// //                     final isSelected =
// //                         controller.selectedCategory.value == category;

// //                     return GestureDetector(
// //                       onTap: () => controller.selectCategory(category),
// //                       child: Container(
// //                         margin: const EdgeInsets.only(right: 12),
// //                         padding: const EdgeInsets.symmetric(
// //                           horizontal: 20,
// //                           vertical: 10,
// //                         ),
// //                         decoration: BoxDecoration(
// //                           color: isSelected ? Colors.blue[600] : Colors.white,
// //                           borderRadius: BorderRadius.circular(20),
// //                           border: Border.all(
// //                             color: isSelected
// //                                 ? Colors.blue[600]!
// //                                 : Colors.grey[300]!,
// //                           ),
// //                           boxShadow: [
// //                             BoxShadow(
// //                               color: Colors.black.withOpacity(0.05),
// //                               blurRadius: 4,
// //                               offset: const Offset(0, 2),
// //                             ),
// //                           ],
// //                         ),
// //                         child: Text(
// //                           category,
// //                           style: TextStyle(
// //                             color: isSelected ? Colors.white : Colors.grey[700],
// //                             fontWeight:
// //                                 isSelected ? FontWeight.w600 : FontWeight.w500,
// //                             fontSize: 14,
// //                           ),
// //                         ),
// //                       ),
// //                     );
// //                   },
// //                 )),
// //           ),

// //           const SizedBox(height: 24),

// //           // Books Grid
// //           Expanded(
// //             child: Obx(() => Padding(
// //                   padding: const EdgeInsets.symmetric(horizontal: 16),
// //                   child: GridView.builder(
// //                     physics: const BouncingScrollPhysics(),
// //                     gridDelegate:
// //                         const SliverGridDelegateWithFixedCrossAxisCount(
// //                       crossAxisCount: 2,
// //                       childAspectRatio: 0.65,
// //                       crossAxisSpacing: 16,
// //                       mainAxisSpacing: 16,
// //                     ),
// //                     // itemCount: controller.filteredBooks.length,
// //                     itemCount: bookscontroller.books.length,
// //                     itemBuilder: (context, index) {
// //                       // final book = controller.filteredBooks[index];
// //                       final book = bookscontroller.books[index];

// //                       return Center(
// //                         child: Container(
// //                           decoration: BoxDecoration(
// //                             color: Colors.white,
// //                             borderRadius: BorderRadius.circular(12),
// //                             boxShadow: [
// //                               BoxShadow(
// //                                 color: Colors.black.withOpacity(0.08),
// //                                 blurRadius: 8,
// //                                 offset: const Offset(0, 2),
// //                               ),
// //                             ],
// //                           ),
// //                           child: Padding(
// //                             padding: const EdgeInsets.all(12),
// //                             child: Container(
// //                               child: Column(
// //                                 crossAxisAlignment: CrossAxisAlignment.start,
// //                                 children: [
// //                                   Container(
// //                                       child: book.coverImage != null
// //                                           ? Image.network(
// //                                               book.coverImage!,
// //                                               width: 120,
// //                                               height: 164,
// //                                               fit: BoxFit.fill,
// //                                             )
// //                                           : Icon(
// //                                               Icons.book,
// //                                               size: 50,
// //                                             )),
// //                                   // Book Title
// //                                   Text(
// //                                     // book['title'],
// //                                     book.title ?? '',
// //                                     style: const TextStyle(
// //                                       fontSize: 14,
// //                                       fontWeight: FontWeight.bold,
// //                                       color: Colors.black87,
// //                                     ),
// //                                     maxLines: 2,
// //                                     overflow: TextOverflow.ellipsis,
// //                                   ),
// //                                   const SizedBox(height: 4),

// //                                   // Author
// //                                   Text(
// //                                     // book['author'],
// //                                     book.author ?? '',
// //                                     style: TextStyle(
// //                                       fontSize: 12,
// //                                       color: Colors.grey[600],
// //                                       fontWeight: FontWeight.w500,
// //                                     ),
// //                                     maxLines: 1,
// //                                     overflow: TextOverflow.ellipsis,
// //                                   ),

// //                                   // Category Badge
// //                                   Container(
// //                                     padding: const EdgeInsets.symmetric(
// //                                       horizontal: 8,
// //                                       vertical: 4,
// //                                     ),
// //                                     decoration: BoxDecoration(
// //                                       color: Colors.blue[50],
// //                                       borderRadius: BorderRadius.circular(12),
// //                                     ),
// //                                     child: Text(
// //                                       // book['category'],
// //                                       book.category ?? '',
// //                                       style: TextStyle(
// //                                         fontSize: 10,
// //                                         color: Colors.blue[700],
// //                                         fontWeight: FontWeight.w600,
// //                                       ),
// //                                     ),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                       );
// //                     },
// //                   ),
// //                 )),
// //           ),
// //         ],
// //       ),

// //       // Bottom Navigation
// //       bottomNavigationBar: Container(
// //         height: 70,
// //         decoration: BoxDecoration(
// //           color: Colors.white,
// //           boxShadow: [
// //             BoxShadow(
// //               color: Colors.black.withOpacity(0.1),
// //               blurRadius: 10,
// //               offset: const Offset(0, -2),
// //             ),
// //           ],
// //         ),
// //         child: Row(
// //           mainAxisAlignment: MainAxisAlignment.spaceAround,
// //           children: [
// //             _buildBottomNavItem(Icons.home, 'Home', true),
// //             _buildBottomNavItem(Icons.explore_outlined, 'Explore', false),
// //             _buildBottomNavItem(Icons.settings_outlined, 'Settings', false),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildBottomNavItem(IconData icon, String label, bool isActive) {
// //     return Column(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: [
// //         Icon(
// //           icon,
// //           color: isActive ? Colors.blue[600] : Colors.grey[500],
// //           size: 24,
// //         ),
// //         const SizedBox(height: 4),
// //         Text(
// //           label,
// //           style: TextStyle(
// //             fontSize: 12,
// //             color: isActive ? Colors.blue[600] : Colors.grey[500],
// //             fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }

// import 'package:app_bong_da/controllers/book_controller.dart';
// import 'package:app_bong_da/controllers/home_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'dart:ui';

// class BookScreen extends StatefulWidget {
//   const BookScreen({Key? key}) : super(key: key);
//   static const String homePage = "/home_page";

//   @override
//   State<BookScreen> createState() => _BookScreenState();
// }

// class _BookScreenState extends State<BookScreen> {
//   final HomeController controller = Get.put(HomeController());
//   final BookController bookscontroller = Get.put(BookController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF8FAFC),
//       body: Column(
//         children: [
//           // Enhanced Header with glass effect
//           Container(
//             height: MediaQuery.of(context).padding.top + 70,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.05),
//                   blurRadius: 10,
//                   offset: const Offset(0, 2),
//                 ),
//               ],
//             ),
//             child: SafeArea(
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                 child: Row(
//                   children: [
//                     // Enhanced Search Field
//                     Expanded(
//                       child: Container(
//                         height: 48,
//                         decoration: BoxDecoration(
//                           color: const Color(0xFFF1F5F9),
//                           borderRadius: BorderRadius.circular(24),
//                           border: Border.all(
//                             color: Colors.grey.shade200,
//                             width: 1,
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.02),
//                               blurRadius: 8,
//                               offset: const Offset(0, 2),
//                             ),
//                           ],
//                         ),
//                         child: TextField(
//                           controller: controller.searchController,
//                           onChanged: (value) => controller.searchBooks(value),
//                           style: const TextStyle(
//                             fontSize: 15,
//                             color: Colors.black87,
//                             fontWeight: FontWeight.w500,
//                           ),
//                           decoration: InputDecoration(
//                             hintText: 'Tìm kiếm sách yêu thích...',
//                             hintStyle: TextStyle(
//                               color: Colors.grey.shade500,
//                               fontSize: 15,
//                               fontWeight: FontWeight.w400,
//                             ),
//                             prefixIcon: Container(
//                               padding: const EdgeInsets.all(12),
//                               child: Icon(
//                                 Icons.search_rounded,
//                                 color: Colors.grey.shade500,
//                                 size: 22,
//                               ),
//                             ),
//                             border: InputBorder.none,
//                             contentPadding: const EdgeInsets.symmetric(
//                               horizontal: 20,
//                               vertical: 14,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 16),

//                     // Enhanced User Avatar with glass effect
//                     InkWell(
//                       onTap: () => bookscontroller.getBooks(),
//                       borderRadius: BorderRadius.circular(24),
//                       child: Container(
//                         width: 48,
//                         height: 48,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(24),
//                           gradient: LinearGradient(
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight,
//                             colors: [
//                               Colors.blue.shade400,
//                               Colors.blue.shade600,
//                             ],
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.blue.withOpacity(0.3),
//                               blurRadius: 8,
//                               offset: const Offset(0, 4),
//                             ),
//                           ],
//                         ),
//                         child: const Icon(
//                           Icons.person_rounded,
//                           color: Colors.white,
//                           size: 24,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),

//           Expanded(
//             child: SingleChildScrollView(
//               physics: const BouncingScrollPhysics(),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const SizedBox(height: 24),

//                   // Enhanced Categories Section
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Row(
//                       children: [
//                         Container(
//                           width: 4,
//                           height: 24,
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               begin: Alignment.topCenter,
//                               end: Alignment.bottomCenter,
//                               colors: [
//                                 Colors.blue.shade400,
//                                 Colors.blue.shade600,
//                               ],
//                             ),
//                             borderRadius: BorderRadius.circular(2),
//                           ),
//                         ),
//                         const SizedBox(width: 12),
//                         const Text(
//                           'Thể loại sách',
//                           style: TextStyle(
//                             fontSize: 22,
//                             fontWeight: FontWeight.w700,
//                             color: Colors.black87,
//                             letterSpacing: -0.5,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 20),

//                   // Enhanced Categories Horizontal Scroll
//                   SizedBox(
//                     height: 44,
//                     child: Obx(() => ListView.builder(
//                           scrollDirection: Axis.horizontal,
//                           padding: const EdgeInsets.symmetric(horizontal: 20),
//                           itemCount: controller.categories.length,
//                           itemBuilder: (context, index) {
//                             final category = controller.categories[index];
//                             final isSelected =
//                                 controller.selectedCategory.value == category;

//                             return GestureDetector(
//                               onTap: () => controller.selectCategory(category),
//                               child: Container(
//                                 margin: const EdgeInsets.only(right: 12),
//                                 padding: const EdgeInsets.symmetric(
//                                   horizontal: 20,
//                                   vertical: 12,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   gradient: isSelected
//                                       ? LinearGradient(
//                                           begin: Alignment.topLeft,
//                                           end: Alignment.bottomRight,
//                                           colors: [
//                                             Colors.blue.shade500,
//                                             Colors.blue.shade600,
//                                           ],
//                                         )
//                                       : null,
//                                   color: isSelected ? null : Colors.white,
//                                   borderRadius: BorderRadius.circular(22),
//                                   border: Border.all(
//                                     color: isSelected
//                                         ? Colors.blue.shade600
//                                         : Colors.grey.shade200,
//                                     width: isSelected ? 0 : 1,
//                                   ),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: isSelected
//                                           ? Colors.blue.withOpacity(0.3)
//                                           : Colors.black.withOpacity(0.04),
//                                       blurRadius: isSelected ? 8 : 4,
//                                       offset: Offset(0, isSelected ? 4 : 2),
//                                     ),
//                                   ],
//                                 ),
//                                 child: Text(
//                                   category,
//                                   style: TextStyle(
//                                     color: isSelected
//                                         ? Colors.white
//                                         : Colors.grey.shade700,
//                                     fontWeight: FontWeight.w600,
//                                     fontSize: 14,
//                                     letterSpacing: 0.2,
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         )),
//                   ),

//                   const SizedBox(height: 32),

//                   // Enhanced Books Grid Section Header
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Container(
//                               width: 4,
//                               height: 20,
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   colors: [
//                                     Colors.orange.shade400,
//                                     Colors.orange.shade600,
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(2),
//                               ),
//                             ),
//                             const SizedBox(width: 12),
//                             const Text(
//                               'Thư viện sách',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w700,
//                                 color: Colors.black87,
//                                 letterSpacing: -0.3,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Obx(() => Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 12,
//                                 vertical: 6,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: Colors.blue.shade50,
//                                 borderRadius: BorderRadius.circular(16),
//                                 border: Border.all(
//                                   color: Colors.blue.shade100,
//                                   width: 1,
//                                 ),
//                               ),
//                               child: Text(
//                                 '${bookscontroller.books.length} cuốn',
//                                 style: TextStyle(
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.blue.shade700,
//                                 ),
//                               ),
//                             )),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 20),

//                   // Enhanced Books Grid with better spacing
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Obx(() => GridView.builder(
//                           shrinkWrap: true,
//                           physics: const NeverScrollableScrollPhysics(),
//                           gridDelegate:
//                               const SliverGridDelegateWithFixedCrossAxisCount(
//                             crossAxisCount: 2,
//                             childAspectRatio: 0.68,
//                             crossAxisSpacing: 16,
//                             mainAxisSpacing: 20,
//                           ),
//                           itemCount: bookscontroller.books.length,
//                           itemBuilder: (context, index) {
//                             final book = bookscontroller.books[index];

//                             return Container(
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(16),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.black.withOpacity(0.06),
//                                     blurRadius: 12,
//                                     offset: const Offset(0, 4),
//                                     spreadRadius: 0,
//                                   ),
//                                   BoxShadow(
//                                     color: Colors.black.withOpacity(0.04),
//                                     blurRadius: 6,
//                                     offset: const Offset(0, 2),
//                                     spreadRadius: 0,
//                                   ),
//                                 ],
//                               ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   // Enhanced Book Cover with rounded corners
//                                   Expanded(
//                                     flex: 4,
//                                     child: Container(
//                                       width: double.infinity,
//                                       margin: const EdgeInsets.all(12),
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(12),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             color:
//                                                 Colors.black.withOpacity(0.1),
//                                             blurRadius: 8,
//                                             offset: const Offset(0, 4),
//                                           ),
//                                         ],
//                                       ),
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(12),
//                                         child: book.coverImage != null
//                                             ? Image.network(
//                                                 book.coverImage!,
//                                                 fit: BoxFit.cover,
//                                                 loadingBuilder: (context, child,
//                                                     loadingProgress) {
//                                                   if (loadingProgress == null)
//                                                     return child;
//                                                   return Container(
//                                                     decoration: BoxDecoration(
//                                                       gradient: LinearGradient(
//                                                         begin:
//                                                             Alignment.topLeft,
//                                                         end: Alignment
//                                                             .bottomRight,
//                                                         colors: [
//                                                           Colors.grey.shade200,
//                                                           Colors.grey.shade100,
//                                                         ],
//                                                       ),
//                                                     ),
//                                                     child: Center(
//                                                       child:
//                                                           CircularProgressIndicator(
//                                                         strokeWidth: 2,
//                                                         valueColor:
//                                                             AlwaysStoppedAnimation(
//                                                           Colors.blue.shade400,
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   );
//                                                 },
//                                                 errorBuilder: (context, error,
//                                                     stackTrace) {
//                                                   return Container(
//                                                     decoration: BoxDecoration(
//                                                       gradient: LinearGradient(
//                                                         begin:
//                                                             Alignment.topLeft,
//                                                         end: Alignment
//                                                             .bottomRight,
//                                                         colors: [
//                                                           Colors.grey.shade300,
//                                                           Colors.grey.shade200,
//                                                         ],
//                                                       ),
//                                                     ),
//                                                     child: Icon(
//                                                       Icons.menu_book_rounded,
//                                                       size: 40,
//                                                       color:
//                                                           Colors.grey.shade500,
//                                                     ),
//                                                   );
//                                                 },
//                                               )
//                                             : Container(
//                                                 decoration: BoxDecoration(
//                                                   gradient: LinearGradient(
//                                                     begin: Alignment.topLeft,
//                                                     end: Alignment.bottomRight,
//                                                     colors: [
//                                                       Colors.blue.shade100,
//                                                       Colors.blue.shade50,
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 child: Icon(
//                                                   Icons.menu_book_rounded,
//                                                   size: 40,
//                                                   color: Colors.blue.shade400,
//                                                 ),
//                                               ),
//                                       ),
//                                     ),
//                                   ),

//                                   // Enhanced Book Info with better spacing
//                                   Expanded(
//                                     flex: 3,
//                                     child: Padding(
//                                       padding: const EdgeInsets.fromLTRB(
//                                           12, 0, 12, 12),
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           // Book Title with better typography
//                                           Text(
//                                             book.title ?? 'Không có tiêu đề',
//                                             style: const TextStyle(
//                                               fontSize: 15,
//                                               fontWeight: FontWeight.w700,
//                                               color: Colors.black87,
//                                               height: 1.3,
//                                               letterSpacing: -0.2,
//                                             ),
//                                             maxLines: 2,
//                                             overflow: TextOverflow.ellipsis,
//                                           ),
//                                           const SizedBox(height: 6),

//                                           // Author with icon
//                                           Row(
//                                             children: [
//                                               Icon(
//                                                 Icons.person_outline_rounded,
//                                                 size: 14,
//                                                 color: Colors.grey.shade500,
//                                               ),
//                                               const SizedBox(width: 4),
//                                               Expanded(
//                                                 child: Text(
//                                                   book.author ??
//                                                       'Không rõ tác giả',
//                                                   style: TextStyle(
//                                                     fontSize: 13,
//                                                     color: Colors.grey.shade600,
//                                                     fontWeight: FontWeight.w500,
//                                                   ),
//                                                   maxLines: 1,
//                                                   overflow:
//                                                       TextOverflow.ellipsis,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),

//                                           const Spacer(),

//                                           // Enhanced Category Badge
//                                           Container(
//                                             padding: const EdgeInsets.symmetric(
//                                               horizontal: 10,
//                                               vertical: 6,
//                                             ),
//                                             decoration: BoxDecoration(
//                                               gradient: LinearGradient(
//                                                 colors: [
//                                                   Colors.blue.shade50,
//                                                   // Colors.blue.shade25,
//                                                 ],
//                                               ),
//                                               borderRadius:
//                                                   BorderRadius.circular(12),
//                                               border: Border.all(
//                                                 color: Colors.blue.shade100,
//                                                 width: 0.5,
//                                               ),
//                                             ),
//                                             child: Text(
//                                               book.category ?? 'Khác',
//                                               style: TextStyle(
//                                                 fontSize: 11,
//                                                 color: Colors.blue.shade700,
//                                                 fontWeight: FontWeight.w600,
//                                                 letterSpacing: 0.3,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             );
//                           },
//                         )),
//                   ),

//                   const SizedBox(height: 100), // Space for bottom navigation
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),

//       // Enhanced Bottom Navigation with glass effect
//       bottomNavigationBar: ClipRRect(
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(20),
//           topRight: Radius.circular(20),
//         ),
//         child: BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//           child: Container(
//             height: 75,
//             decoration: BoxDecoration(
//               color: Colors.white.withOpacity(0.95),
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(20),
//                 topRight: Radius.circular(20),
//               ),
//               border: Border(
//                 top: BorderSide(
//                   color: Colors.grey.shade200,
//                   width: 1,
//                 ),
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.08),
//                   blurRadius: 20,
//                   offset: const Offset(0, -5),
//                   spreadRadius: 0,
//                 ),
//               ],
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 _buildBottomNavItem(Icons.home_rounded, 'Trang chủ', true),
//                 _buildBottomNavItem(Icons.explore_rounded, 'Khám phá', false),
//                 _buildBottomNavItem(Icons.settings_rounded, 'Cài đặt', false),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildBottomNavItem(IconData icon, String label, bool isActive) {
//     return InkWell(
//       onTap: () {},
//       borderRadius: BorderRadius.circular(12),
//       child: Container(
//         padding: const EdgeInsets.symmetric(
//           horizontal: 16,
//           vertical: 8,
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               padding: const EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 color: isActive ? Colors.blue.shade600 : Colors.transparent,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Icon(
//                 icon,
//                 color: isActive ? Colors.white : Colors.grey.shade500,
//                 size: 24,
//               ),
//             ),
//             const SizedBox(height: 4),
//             Text(
//               label,
//               style: TextStyle(
//                 fontSize: 12,
//                 color: isActive ? Colors.blue.shade600 : Colors.grey.shade500,
//                 fontWeight: FontWeight.w600,
//                 letterSpacing: 0.2,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sach_hay/data/storage/user_storage.dart';
import 'package:sach_hay/view/screens/book_details_screen.dart';

import '../../controllers/book_controller.dart';
import '../../core/theme/app_colors.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({Key? key}) : super(key: key);
  static const String bookScreen = "/bookscreen";

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  // final HomeController controller = Get.put(HomeController());
  final BookController bookscontroller = Get.put(BookController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLight,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => Get.back(),
                      ),
                      IconButton(
                        icon: const Icon(Icons.share, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),

                // Hero Title Section
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Không còn ngại ngùng, đọc theo cách bạn muốn',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                        child: const Text(
                          'Sách điện tử',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                // Category Dropdown
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          children: [
                            Text(
                              'Tất cả danh mục',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Books Grid
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Obx(() => GridView.builder(
                          padding: const EdgeInsets.all(20),
                          physics: const BouncingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 0.55,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 20,
                          ),
                          itemCount: bookscontroller.books.length,
                          itemBuilder: (context, index) {
                            final book = bookscontroller.books[index];

                            return GestureDetector(
                              onTap: ()async{

                                final pref = await UserStorage.saveBookId(book.id ?? '');
                                final saveprefEpubName = await UserStorage.saveEpubFileName(book.epubFileName ?? '');

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => BookDetailsScreen(),
                                  ),
                                );

                                log('Book ID saved: ${book.id}');
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Book Cover with Badge
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.15),
                                            blurRadius: 8,
                                            offset: const Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: book.coverImage != null
                                            ? Image.network(
                                                book.coverImage!,
                                                fit: BoxFit.cover,
                                                errorBuilder:
                                                    (context, error, stackTrace) {
                                                  return Container(
                                                    color: Colors.grey.shade300,
                                                    child: Icon(
                                                      Icons.menu_book,
                                                      size: 30,
                                                      color: Colors.grey.shade600,
                                                    ),
                                                  );
                                                },
                                              )
                                            : Container(
                                                color: Colors.grey.shade300,
                                                child: Icon(
                                                  Icons.menu_book,
                                                  size: 30,
                                                  color: Colors.grey.shade600,
                                                ),
                                              ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  // Book Title
                                  Text(
                                    book.title ?? 'Không có tiêu đề',
                                    style: const TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87,
                                      height: 1.2,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            );
                          },
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
