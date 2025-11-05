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
  RxList list_Bookmark = <BookmarkModel>[].obs;
  Rx<BookmarkModel?> bookmarks = Rx<BookmarkModel?>(null);

  @override
  void onInit() {
    super.onInit();
    getListBookmarks();
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