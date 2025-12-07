// import 'package:get/get.dart';
// import '../core/network/api_service/api_service.dart';
// import '../data/models/book_model/book_model.dart';
//
// class SearchController extends GetxController {
//   final ApiService apiService;
//
//   SearchController(this.apiService);
//
//   final isLoading = false.obs;
//   final books = <BookModel>[].obs;
//   final errorMessage = ''.obs;
//
//   Future<void> search(String keyword) async {
//     try {
//       isLoading.value = true;
//       errorMessage.value = '';
//
//       final response = await apiService.searchBooks(keyword);
//       books.assignAll(response.data?.books ?? []);
//     } catch (e) {
//       errorMessage.value = 'Lỗi tìm kiếm';
//     } finally {
//       isLoading.value = false;
//     }
//   }
// }

import 'dart:async';
import 'package:get/get.dart';
import 'package:sach_hay/core/di/common_features.dart';

import '../core/network/api_service/api_service.dart';
import '../data/models/book_model/book_model.dart';

class BookSearchController extends GetxController {
  final apiService = getIt<ApiService>();

  final isLoading = false.obs;
  final books = <BookModel>[].obs;
  final keyword = ''.obs;

  Timer? _debounce;

  void onSearchChanged(String value) {
    keyword.value = value;

    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (value.trim().isNotEmpty) {
        searchBooks(value.trim());
      } else {
        books.clear();
      }
    });
  }

  Future<void> searchBooks(String q) async {
    try {
      isLoading.value = true;
      final res = await apiService.searchBooks(q);
      books.assignAll(res.data?.books ?? []);
    } catch (e) {
      books.clear();
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    _debounce?.cancel();
    super.onClose();
  }
}
