// import 'dart:developer';


// import 'package:get/get.dart';
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';

// import '../core/di/common_features.dart';
// import '../core/network/api_service/api_service.dart';
// import '../data/models/book_model/book_model.dart';

// class BookController extends GetxController {
//   final apiService = getIt<ApiService>();
//   RxList<BookModel> books = <BookModel>[].obs;
//   int page = 1;
//   int limit = 10;
//   RxBool hasMore = true.obs;
//   RxBool isLoading = false.obs;
//   @override
//   void onInit() {
//     super.onInit();
//     getBooks(); // Gọi lần đầu
//   }

//   Future<void> getBooks({bool loadMore = false}) async {
//     if (isLoading.value) {
//       return;
//     }
//     if (!hasMore.value && loadMore) {
//       return;
//     }

//     isLoading.value = true;

//     try {
//       final response = await apiService.getBooks(page: page, limit: limit);
//       if (response.success) {
//         log("getBooks successfully ${response.data}");
//         final List<BookModel> newData = response.data ?? [];
//         books.assignAll(newData);
//       } else {
//         log("getBooks failed: ${response.message}");
//       }
//     } catch (e, stack) {
//       log("getBook error: $e, stack: $stack");
//     } finally {
//       isLoading.value = false;
//     }
//   }

  
// }

import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:epub_kit/epub_kit.dart';
import 'package:get/get.dart';
import 'package:sach_hay/data/storage/user_storage.dart';
import '../core/di/common_features.dart';
import '../core/network/api_service/api_service.dart';
import '../data/models/book_model/book_model.dart';
import 'package:path_provider/path_provider.dart';

class BookController extends GetxController {
  final apiService = getIt<ApiService>();
  RxList<BookModel> books = <BookModel>[].obs;
  Rx<BookModel?> bookDetails = Rx<BookModel?>(null); // Sử dụng RxMap để lưu chi tiết sách
  RxBool isLoading = false.obs;
  RxBool hasMore = true.obs;

  int page = 1;
  int limit = 10;

  @override
  void onInit() {
    super.onInit();
    getBooks();
    getBookDetails(); // load lần đầu
  }

  Future<void> getBooks({bool loadMore = false}) async {
    if (isLoading.value) return;
    if (!hasMore.value && loadMore) return;

    isLoading.value = true;
    try {
      final response = await apiService.getBooks(page: page, limit: limit);
      if (response.success) {
        log("getBooks successfully ${response.data}");
        final newData = response.data ?? [];
        if (loadMore) {
          books.addAll(newData);
        } else {
          books.assignAll(newData);
        }

        if (newData.length < limit) {
          hasMore.value = false;
        } else {
          page++;
        }
      } else {
        log("getBooks failed: ${response.message}");
      }
    } catch (e, stack) {
      log("getBook error: $e, stack: $stack");
    } finally {
      isLoading.value = false;
    }
  }

  // Future<void> getBookDetails() async {
  //     final id  = await UserStorage.getBookId();
  //   try {
  //     final response = await apiService.getBookDetails(id);
  //     if (response.success) {
  //       log("getBookDetails successfully ${response.data}");
  //        final bookDetail = response.data ?? [];
  //        bookDetails.assign(bookDetail);
  //       // Xử lý chi tiết sách ở đây
  //     } else {
  //       log("getBookDetails failed: ${response.message}");
  //     }
  //   } catch (e, stack) {
  //     log("getBookDetails error: $e, stack: $stack");
  //   }
  // }

  Future<void> getBookDetails() async {
  final id = await UserStorage.getBookId();
  try {
    final response = await apiService.getBookDetails(id);
    if (response.success) {
      log("getBookDetails successfully ${response.data}");
      final bookDetail = BookModel.fromJson(response.data!.toJson());
      bookDetails.value = bookDetail; // hoặc assign nếu là Rx<BookModel>
    } else {
      log("getBookDetails failed: ${response.message}");
    }
  } catch (e, stack) {
    log("getBookDetails error: $e, stack: $stack");
  }
}



}
