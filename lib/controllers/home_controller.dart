// // // home_controller.dart
// // import 'package:get/get.dart';
// //
// // class HomeController extends GetxController {
// //   // Observable variable
// //   var selectedIndex = 0.obs;
// //
// //   // Method to change tab
// //   void changeTab(int index) {
// //     selectedIndex.value = index;
// //   }
// //
// //   // Getter (optional, for better access)
// //   int get currentIndex => selectedIndex.value;
// // }
// // home_controller.dart
// import 'dart:developer';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:go_router/go_router.dart';
// import 'package:sach_hay/data/models/banner_model/banner_model.dart';
// import 'package:sach_hay/data/models/new_book_model/new_book_model.dart';
// import 'package:sach_hay/data/models/trending_books/trending_book_model.dart';
//
// import '../core/di/common_features.dart';
// import '../core/network/api_service/api_service.dart';
// import '../data/models/book_model/book_model.dart';
//
// class HomeController extends GetxController {
//   final apiService = getIt<ApiService>();
//   var isLoading = false.obs;
//   // Observable variable
//   var selectedIndex = 0.obs;
//   final randomBooks = <BookModel>[].obs;
//   // final RxList<dynamic> newBooks = RxList<dynamic>();
//   final newBooks = <BookModel>[].obs;
//   final trendingBooks = <TrendingBookModel>[].obs;
//   final banners = <BannerModel>[].obs;
//   var isFirstLoad = true.obs;
//   var hasLoadedBanners = false.obs;
//
//   // Method to change tab
//   void changeTab(int index, BuildContext context) {
//     selectedIndex.value = index;
//
//     switch (index) {
//       case 0:
//         context.go('/home_screen');
//         break;
//       case 1:
//         context.go('/library-book-screen');
//         break;
//       case 2:
//         context.go('/advise_screen');
//         break;
//       case 3:
//         context.go('/profile_screen');
//         break;
//     }
//   }
//
//   // Method to change tab
//
//   // Getter (optional, for better access)
//   int get currentIndex => selectedIndex.value;
//
//   @override
//   void onInit() {
//     super.onInit();
//     getRandomBooks();
//     getNewBooks();
//     getTrendingBooks();
//     getBanners();
//   }
//
//   Future<void> getRandomBooks() async {
//     isLoading.value = true;
//     isFirstLoad.value = true;
//     try {
//       final response = await apiService.getRandomBooks();
//       await Future.delayed(const Duration(milliseconds: 300));
//       if (response.success) {
//         // Handle successful response
//         randomBooks.assignAll(response.data ?? []);
//         hasLoadedBanners.value = true;
//         log("Random books fetched successfully: ${response.data}");
//       } else {
//         // Handle failure response
//         log("Failed to fetch random books: ${response.message}");
//       }
//     } catch (e, stack) {
//       log("Error fetching random books: $e, stack: $stack");
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//   Future<void> getNewBooks() async {
//     isLoading.value = true;
//     try {
//       final response = await apiService.getNewBooks();
//       await Future.delayed(const Duration(milliseconds: 300));
//       if (response.success) {
//         // Handle successful response
//         // newBooks.value = (response.data as List)
//         //     .map((e) => BookModel.fromJson(e))
//         //     .toList();
//         // newBooks.value = response.data ?? [];
//         newBooks.assignAll(response.data ?? []);
//         log("New books fetched successfully: ${response.data}");
//       } else {
//         // Handle failure response
//         log("Failed to fetch new books: ${response.message}");
//       }
//     } catch (e, stack) {
//       log("Error fetching new books: $e, stack: $stack");
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//   Future<void> getTrendingBooks() async {
//     isLoading.value = true;
//     try {
//       final response = await apiService.getTrendingBooks();
//       await Future.delayed(const Duration(milliseconds: 500));
//       if (response.success) {
//         trendingBooks.assignAll(response.data ?? []);
//         hasLoadedBanners.value = true;
//         // Handle successful response
//         log("Trending books fetched successfully: ${response.data}");
//       } else {
//         // Handle failure response
//         log("Failed to fetch trending books: ${response.message}");
//       }
//     } catch (e, stack) {
//       log("Error fetching trending books: $e, stack: $stack");
//       hasLoadedBanners.value = true;
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//   Future<void> getBanners() async {
//     isLoading.value = true;
//     // isFirstLoad.value = true;
//     try {
//       final response = await apiService.getBanners();
//       await Future.delayed(const Duration(milliseconds: 300));
//       if (response.success) {
//         // Handle successful response
//         log("Banners fetched successfully: ${response.data}");
//         banners.assignAll(response.data ?? []);
//       } else {
//         // Handle failure response
//         log("Failed to fetch banners: ${response.message}");
//       }
//     } catch (e, stack) {
//       log("Error fetching banners: $e, stack: $stack");
//     } finally {
//       isLoading.value = false;
//       // isFirstLoad.value = false;
//     }
//   }
// }

// home_controller.dart
import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:sach_hay/data/models/banner_model/banner_model.dart';
import 'package:sach_hay/data/models/new_book_model/new_book_model.dart';
import 'package:sach_hay/data/models/trending_books/trending_book_model.dart';

import '../core/di/common_features.dart';
import '../core/network/api_service/api_service.dart';
import '../data/models/book_model/book_model.dart';

class HomeController extends GetxController {
  final apiService = getIt<ApiService>();

  // ✅ Tách riêng loading state cho từng section
  var isBannersLoading = true.obs;
  var isNewBooksLoading = true.obs;
  var isTrendingBooksLoading = true.obs;
  var isRandomBooksLoading = true.obs;

  // Observable variable
  var selectedIndex = 0.obs;
  final randomBooks = <BookModel>[].obs;
  final newBooks = <BookModel>[].obs;
  final trendingBooks = <TrendingBookModel>[].obs;
  final banners = <BannerModel>[].obs;

  // ✅ Flag để biết đã load xong chưa (không phụ thuộc vào isEmpty)
  var hasLoadedBanners = false.obs;
  var hasLoadedNewBooks = false.obs;
  var hasLoadedTrendingBooks = false.obs;
  var greeting = ''.obs;
  Timer? timer;

  // Method to change tab
  void changeTab(int index, BuildContext context) {
    selectedIndex.value = index;

    switch (index) {
      case 0:
        context.go('/home_screen');
        break;
      case 1:
        context.go('/library-book-screen');
        break;
      case 2:
        context.go('/advise_screen');
        break;
      case 3:
        context.go('/profile_screen');
        break;
    }
  }

  // Getter (optional, for better access)
  int get currentIndex => selectedIndex.value;

  @override
  void onInit() {
    super.onInit();
    getRandomBooks();
    getNewBooks();
    getTrendingBooks();
    getBanners();
    updateGreeting(); // gọi lần đầu
    timer = Timer.periodic(const Duration(minutes: 1), (_) {
      updateGreeting(); // tự cập nhật sau mỗi phút
    });
  }

  Future<void> getRandomBooks() async {
    isRandomBooksLoading.value = true;
    try {
      final response = await apiService.getRandomBooks();
      await Future.delayed(const Duration(milliseconds: 300));
      if (response.success) {
        randomBooks.assignAll(response.data ?? []);
        log("Random books fetched successfully: ${response.data}");
      } else {
        log("Failed to fetch random books: ${response.message}");
      }
    } catch (e, stack) {
      log("Error fetching random books: $e, stack: $stack");
    } finally {
      isRandomBooksLoading.value = false;
    }
  }

  Future<void> getNewBooks() async {
    isNewBooksLoading.value = true;
    hasLoadedNewBooks.value = false; // ✅ Reset flag
    try {
      final response = await apiService.getNewBooks();
      await Future.delayed(const Duration(milliseconds: 300));
      if (response.success) {
        newBooks.assignAll(response.data ?? []);
        log("New books fetched successfully: ${response.data}");
      } else {
        log("Failed to fetch new books: ${response.message}");
      }
    } catch (e, stack) {
      log("Error fetching new books: $e, stack: $stack");
    } finally {
      isNewBooksLoading.value = false;
      hasLoadedNewBooks.value = true; // ✅ Đánh dấu đã load xong
    }
  }

  Future<void> getTrendingBooks() async {
    isTrendingBooksLoading.value = true;
    hasLoadedTrendingBooks.value = false; // ✅ Reset flag
    try {
      final response = await apiService.getTrendingBooks();
      await Future.delayed(const Duration(milliseconds: 500));
      if (response.success) {
        trendingBooks.assignAll(response.data ?? []);
        log("Trending books fetched successfully: ${response.data}");
      } else {
        log("Failed to fetch trending books: ${response.message}");
      }
    } catch (e, stack) {
      log("Error fetching trending books: $e, stack: $stack");
    } finally {
      isTrendingBooksLoading.value = false;
      hasLoadedTrendingBooks.value = true; // ✅ Đánh dấu đã load xong
    }
  }

  Future<void> getBanners() async {
    isBannersLoading.value = true;
    hasLoadedBanners.value = false; // ✅ Reset flag
    try {
      final response = await apiService.getBanners();
      await Future.delayed(const Duration(milliseconds: 300));
      if (response.success) {
        banners.assignAll(response.data ?? []);
        log("Banners fetched successfully: ${response.data}");
      } else {
        log("Failed to fetch banners: ${response.message}");
      }
    } catch (e, stack) {
      log("Error fetching banners: $e, stack: $stack");
    } finally {
      isBannersLoading.value = false;
      hasLoadedBanners.value = true; // ✅ Đánh dấu đã load xong
    }
  }

  void updateGreeting() {
    final hour = DateTime.now().hour;

    if (hour >= 5 && hour < 11) {
      greeting.value = "Chào buổi sáng, bạn đọc!";
    } else if (hour >= 11 && hour < 13) {
      greeting.value = "Chào buổi trưa, bạn đọc!";
    } else if (hour >= 13 && hour < 18) {
      greeting.value = "Chào buổi chiều, bạn đọc!";
    } else {
      greeting.value = "Chào buổi tối, bạn đọc!";
    }
  }

  // ✅ Method để refresh tất cả data
  Future<void> refreshAll() async {
    await Future.wait([
      getBanners(),
      getNewBooks(),
      getTrendingBooks(),
    ]);
  }

  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }
}
