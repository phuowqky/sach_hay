
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sach_hay/data/models/chapter_model/chapter_model.dart';
import 'package:sach_hay/data/models/chapter_model/list_chapter_model.dart';
import 'dart:typed_data'; 
import '../../../data/models/book_model/book_model.dart';
import '../../../data/models/login/login_model.dart';
import '../../../data/models/signup/register_model.dart';
import '../api_response/api_response.dart';
import '../api_response/api_response_v2.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST("api/auth/login")
  Future<ApiResponse<LoginModel>> login(@Body() UserModel user);

  @POST("api/auth/register")
  Future<ApiResponse<RegisterModel>> Register(@Body() UserModel user);

  @GET('/api/books')
  Future<ApiResponseV2<List<BookModel>>> getBooks({
    @Query("page") required int page,
    @Query("limit") required int limit,
  });

  @GET('/api/books/{id}')
  Future<ApiResponseV2<BookModel>> getBookDetails(@Path("id") String id);


  // 🟢 Thêm API mới để tải file EPUB
  // @GET("/api/books/download/{epubFileName}") // ✅ thêm
  // @DioResponseType(ResponseType.bytes) // ✅ để lấy raw bytes
  // Future<HttpResponse<List<int>>> downloadEpub(
  //   @Path("epubFileName") String epubFileName,
  // ); // ✅ thêm

  @GET('/api/chapters/{bookId}')
  Future<ApiResponseV2<List<ListChapterModel>>> getChapters(@Path("bookId") String bookId);

  @GET('/api/books/chapter/{bookId}/{index}')
  Future<ChapterModel> getChapterContent(
    @Path("bookId") String bookId,
    @Path("index") int index,
  );
}