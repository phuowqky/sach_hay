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
  var isLoading = false.obs;
  // Observable variable
  var selectedIndex = 0.obs;
  final randomBooks = <BookModel>[].obs;
  // final RxList<dynamic> newBooks = RxList<dynamic>();
  final newBooks = <BookModel>[].obs;
  final trendingBooks = <TrendingBookModel>[].obs;
  final banners = <BannerModel>[].obs;

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

  // Method to change tab

  // Getter (optional, for better access)
  int get currentIndex => selectedIndex.value;

  @override
  void onInit() {
    super.onInit();
    getRandomBooks();
    getNewBooks();
    getTrendingBooks();
    getBanners();
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

  Future<void> getBanners() async {
    isLoading.value = true;
    try{
      final response = await apiService.getBanners();
      if (response.success) {
        // Handle successful response
        log("Banners fetched successfully: ${response.data}");
        banners.assignAll(response.data ?? []);
      } else {
        // Handle failure response
        log("Failed to fetch banners: ${response.message}");
      }
    } catch (e, stack) {
      log("Error fetching banners: $e, stack: $stack");
    }finally{
      isLoading.value = false;
    }
  }

}