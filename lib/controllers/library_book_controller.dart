// // import 'dart:developer';
// //
// // import 'package:get/get.dart';
// // import 'package:sach_hay/core/di/common_features.dart';
// // import 'package:sach_hay/data/models/bookmark_model/bookmark_model.dart';
// //
// // import '../core/network/api_service/api_service.dart';
// //
// // class LibraryBookController extends GetxController{
// //   final isLoading = false.obs;
// //   final apiService = getIt<ApiService>();
// //   final userId = '68f9fffe137375eaa0a4689f';
// //   final bookId = '68f28428ae9e790e0d2a91b8';
// //   RxList list_Bookmark = <BookmarkModel>[].obs;
// //   Rx<BookmarkModel?> bookmarks = Rx<BookmarkModel?>(null);
// //
// //   @override
// //   void onInit() {
// //     super.onInit();
// //     getListBookmarks();
// //   }
// //
// //   Future<void> getBookmark() async{
// //     isLoading.value = true;
// //     try{
// //       final response = await apiService.getBookmark(userId, bookId);
// //       if(response.success){
// //         // Xử lý dữ liệu bookmark ở đây
// //         log("Get bookmark successfully: $response");
// //         // bookmark.assignAll(response.data ?? [] );
// //         final bookmark = BookmarkModel.fromJson(response.data!.toJson());
// //         bookmarks.value = bookmark;
// //       }else{
// //         // Xử lý lỗi ở đây
// //         log("Get bookmark failed: $response");
// //       }
// //     }catch(e){
// //       log("Error getting bookmark: $e");
// //     }finally{
// //       isLoading.value = false;
// //     }
// //   }
// //
// //  Future<void> getListBookmarks() async{
// //     isLoading.value = true;
// //     try{
// //       final response = await apiService.getListBookmarks(userId);
// //       if(response.success){
// //         // Xử lý dữ liệu bookmark ở đây
// //         log("Get list bookmark successfully: $response");
// //         list_Bookmark.assignAll(response.data ?? [] );
// //       }else{
// //         // Xử lý lỗi ở đây
// //         log("Get list bookmark failed: $response");
// //       }
// //     }catch(e){
// //       log("Error getting list bookmark: $e");
// //     }finally{
// //       isLoading.value = false;
// //     }
// //   }
// //
// //
// // }
//
// import 'dart:developer';
// import 'package:get/get.dart';
// import 'package:sach_hay/core/di/common_features.dart';
// import 'package:sach_hay/data/models/bookmark_model/bookmark_model.dart';
// import '../core/network/api_service/api_service.dart';
//
// class LibraryBookController extends GetxController {
//   final isLoading = false.obs;
//   final apiService = getIt<ApiService>();
//
//   final userId = '68f9fffe137375eaa0a4689f';
//   RxList<BookmarkModel> list_Bookmark = <BookmarkModel>[].obs;
//   RxList<BookmarkModel> filteredList = <BookmarkModel>[].obs;
//
//   RxInt selectedTab = 0.obs; // 0 = Tất cả, 1 = Đang đọc, 2 = Đã hoàn thành
//
//   @override
//   void onInit() {
//     super.onInit();
//     getListBookmarks();
//   }
//
//   Future<void> getListBookmarks() async {
//     isLoading.value = true;
//     try {
//       final response = await apiService.getListBookmarks(userId);
//       if (response.success) {
//         log("Get list bookmark successfully: $response");
//         list_Bookmark.assignAll(response.data ?? []);
//         filterList(); // Lọc danh sách ngay sau khi load
//       } else {
//         log("Get list bookmark failed: $response");
//       }
//     } catch (e) {
//       log("Error getting list bookmark: $e");
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//   /// Lọc danh sách theo tab đang chọn
//   void filterList() {
//     if (selectedTab.value == 0) {
//       filteredList.assignAll(list_Bookmark);
//     } else if (selectedTab.value == 1) {
//       filteredList.assignAll(
//         list_Bookmark.where((b) {
//           final p = double.tryParse(b.progress?.replaceAll('%', '') ?? '0') ?? 0;
//           return p > 0 && p < 100;
//         }),
//       );
//     } else if (selectedTab.value == 2) {
//       filteredList.assignAll(
//         list_Bookmark.where((b) {
//           final p = double.tryParse(b.progress?.replaceAll('%', '') ?? '0') ?? 0;
//           return p >= 100;
//         }),
//       );
//     }
//   }
//
//   void changeTab(int index) {
//     selectedTab.value = index;
//     filterList();
//   }
// }

import 'dart:developer';

import 'package:get/get.dart';
import 'package:sach_hay/core/di/common_features.dart';
import 'package:sach_hay/data/models/bookmark_model/bookmark_model.dart';

import '../core/network/api_service/api_service.dart';

class LibraryBookController extends GetxController{
  final isLoading = false.obs;
  final apiService = getIt<ApiService>();
  final userId = '68f9fffe137375eaa0a4689f';
  final bookId = '68f28428ae9e790e0d2a91b8';
  RxList<BookmarkModel> list_Bookmark = <BookmarkModel>[].obs;
  Rx<BookmarkModel?> bookmarks = Rx<BookmarkModel?>(null);

  // Tab selection
  final selectedTab = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getListBookmarks();
  }

  // Thay đổi tab
  void changeTab(int index) {
    selectedTab.value = index;
  }

  // Lọc sách theo tab


  // Message khi không có sách
  String getEmptyMessage() {
    if (selectedTab.value == 0) {
      return 'Chưa có sách đang đọc';
    } else if (selectedTab.value == 1) {
      return 'Chưa có sách đã hoàn thành';
    } else {
      return 'Chưa có sách yêu thích';
    }
  }

  Future<void> getBookmark() async{
    isLoading.value = true;
    try{
      final response = await apiService.getBookmark(userId, bookId);
      if(response.success){
        // Xử lý dữ liệu bookmark ở đây
        log("Get bookmark successfully: $response");
        // bookmark.assignAll(response.data ?? [] );
        final bookmark = BookmarkModel.fromJson(response.data!.toJson());
        bookmarks.value = bookmark;
      }else{
        // Xử lý lỗi ở đây
        log("Get bookmark failed: $response");
      }
    }catch(e){
      log("Error getting bookmark: $e");
    }finally{
      isLoading.value = false;
    }
  }

  Future<void> getListBookmarks() async{
    isLoading.value = true;
    try{
      final response = await apiService.getListBookmarks(userId);
      if(response.success){
        // Xử lý dữ liệu bookmark ở đây
        log("Get list bookmark successfully: $response");
        list_Bookmark.assignAll(response.data ?? [] );
      }else{
        // Xử lý lỗi ở đây
        log("Get list bookmark failed: $response");
      }
    }catch(e){
      log("Error getting list bookmark: $e");
    }finally{
      isLoading.value = false;
    }
  }
}