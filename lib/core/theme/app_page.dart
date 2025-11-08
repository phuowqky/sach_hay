import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:path/path.dart';
import 'package:sach_hay/controllers/home_controller.dart';
import 'package:sach_hay/view/screens/advise_screen.dart';
import 'package:sach_hay/view/screens/book_details_screen.dart';
import 'package:sach_hay/view/screens/home_screen.dart';
import 'package:sach_hay/view/screens/library_book_screen.dart';
import 'package:sach_hay/view/screens/main_screen.dart';
import 'package:sach_hay/view/screens/start_screen.dart';

import '../../data/storage/user_storage.dart';
import '../../view/screens/book_render_screen.dart';
import '../../view/screens/book_screen.dart';
import '../../view/screens/login_screen.dart';
import '../../view/screens/signup_screen.dart';
import '../di/common_features.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});
  @override
  State<AppPage> createState() => _AppPageState();
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class _AppPageState extends State<AppPage> {
  @override
  void initState() {
    super.initState();
    retrieveToken();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844), // iPhone 12 Pro kích thước tham chiếu
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
      return MaterialApp.router(
        routerConfig: _router,
        debugShowCheckedModeBanner: false,
        builder: (context, widget) {
          // Quan trọng: gắn MediaQuery để cập nhật scale cho toàn app
          // ScreenUtil.setContext(context);
          return widget!;
        },
        // locale: const Locale('vi', 'VN'),
        localizationsDelegates: const [],
        // supportedLocales: const [
        //   Locale('vi', 'VN'),
        // ],
      );}
    );
  }

  void retrieveToken() async {
    final token = await UserStorage.getToken();

    if (token.isNotEmpty) {
      CommonFeatures.setAuthorizationToken(token);
      log("Token restored and set in Dio: $token");
    }
  }

  final GoRouter _router = GoRouter(
    navigatorKey: navigatorKey,
    routes: <RouteBase>[
      // GoRoute(
      //   path: '/',
      //   builder: (BuildContext context, GoRouterState state) {
      //     return StartScreen();
      //   },
      // ),

      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return MainScreen();
        },
      ),
      
      GoRoute(path: '/advise_screen', builder: (context, state) {
        return AdviseScreen();
      }),

      GoRoute(
        path: '/reading_chapter',
        builder: (context, state) {
          final bookId = state.uri.queryParameters['bookId']!;
          final index = int.parse(state.uri.queryParameters['index']!);
          return ReadingChapterScreen(
            bookId: bookId,
            chapterIndex: index,
          );
        },
      ),

      GoRoute(
          path: '/library-book-screen',
          builder: (context, state) {
            return LibraryBookScreen();
          }
      ),
      // GoRoute(
      //   path: '/',
      //   builder: (BuildContext context, GoRouterState state) {
      //     return ReadingChapterScreen ();
      //   },
      // ),

      // GoRoute(
      //   path: '/',
      //   builder: (BuildContext context, GoRouterState state) {
      //     return  BookScreen();
      //   },
      // ),
// GoRoute(
//   path: '/',
//   builder: (context, state) {
//     final fileUrl = state.uri.queryParameters['fileUrl']!;
//     return BookDetailsScreen(fileUrl: fileUrl);
//   },
// ),
      // GoRoute(
      //   path: '/',
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const HomeScreen();
      //   },
      // ),


      GoRoute(
          path: '/login_screen',
          builder: (context, state) {
            return LoginScreen();
          }),
      GoRoute(
        path: '/signup_screen',
        builder: (context, state) {
          return SignupScreen();
        },
      ),
      GoRoute(
        path: '/main_screen',
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
          path: '/home_screen',
          builder: (context, state) {
            return  HomeScreen();
          }),
      GoRoute(
          path: '/bookscreen',
          builder: (context, state) {
            return BookScreen();
          }),
      GoRoute(path: '/book_details_screen', builder: (context, state) {
        // final bookId = state.uri.queryParameters['bookId']!;
        return BookDetailsScreen();
      }),
    ],
  );
}
