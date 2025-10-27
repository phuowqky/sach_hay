// // home_controller.dart
// import 'package:get/get.dart';
//
// class HomeController extends GetxController {
//   // Observable variable
//   var selectedIndex = 0.obs;
//
//   // Method to change tab
//   void changeTab(int index) {
//     selectedIndex.value = index;
//   }
//
//   // Getter (optional, for better access)
//   int get currentIndex => selectedIndex.value;
// }
// home_controller.dart
import 'dart:developer';

import 'package:get/get.dart';
import 'package:sach_hay/data/models/new_book_model/new_book_model.dart';
import 'package:sach_hay/data/models/trending_books/trending_book_model.dart';

import '../core/di/common_features.dart';
import '../core/network/api_service/api_service.dart';
import '../data/models/book_model/book_model.dart';

class HomeController extends GetxController {
  final apiService = getIt<ApiService>();
  var isLoading = false.obs;
  // Observable variable
  var selectedIndex = 0.obs;
  final randomBooks = <BookModel>[].obs;
  // final RxList<dynamic> newBooks = RxList<dynamic>();
  final newBooks = <BookModel>[].obs;
  final trendingBooks = <TrendingBookModel>[].obs;

  // Method to change tab
  void changeTab(int index) {
    selectedIndex.value = index;
  }

  // Getter (optional, for better access)
  int get currentIndex => selectedIndex.value;

  @override
  void onInit() {
    super.onInit();
    getRandomBooks();
    getNewBooks();
    getTrendingBooks();
  }

  Future<void> getRandomBooks() async {
    isLoading.value = true;
    try{
      final response = await apiService.getRandomBooks();
      if (response.success) {
        // Handle successful response
        randomBooks.assignAll(response.data ?? []);
        log("Random books fetched successfully: ${response.data}");
      } else {
        // Handle failure response
        log("Failed to fetch random books: ${response.message}");
      }
    } catch (e, stack) {
      log("Error fetching random books: $e, stack: $stack");
    }finally{
      isLoading.value = false;
    }
  }

  Future<void> getNewBooks() async {
    isLoading.value = true;
    try{
      final response = await apiService.getNewBooks();
      if (response.success) {
        // Handle successful response
        // newBooks.value = (response.data as List)
        //     .map((e) => BookModel.fromJson(e))
        //     .toList();
        // newBooks.value = response.data ?? [];
        newBooks.assignAll(response.data ?? []);
        log("New books fetched successfully: ${response.data}");
      } else {
        // Handle failure response
        log("Failed to fetch new books: ${response.message}");
      }
    } catch (e, stack) {
      log("Error fetching new books: $e, stack: $stack");
    }finally{
      isLoading.value = false;
    }
  }

  Future<void> getTrendingBooks() async {
    isLoading.value = true;
    try{
      final response = await apiService.getTrendingBooks();
      if (response.success) {
        trendingBooks.assignAll(response.data ?? []);
        // Handle successful response
        log("Trending books fetched successfully: ${response.data}");
      } else {
        // Handle failure response
        log("Failed to fetch trending books: ${response.message}");
      }
    } catch (e, stack) {
      log("Error fetching trending books: $e, stack: $stack");
    }finally{
      isLoading.value = false;
    }
  }
}