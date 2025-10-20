import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:path/path.dart';
import 'package:sach_hay/controllers/home_controller.dart';
import 'package:sach_hay/view/screens/book_details_screen.dart';
import 'package:sach_hay/view/screens/epub_render_screen.dart';
import 'package:sach_hay/view/screens/home_screen.dart';
import 'package:sach_hay/view/screens/start_screen.dart';

import '../../data/storage/user_storage.dart';
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
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      // locale: const Locale('vi', 'VN'),
      localizationsDelegates: const [],
      // supportedLocales: const [
      //   Locale('vi', 'VN'),
      // ],
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
      //     return const StartScreen();
      //   },
      // ),
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return ReadingChapterScreen ();
        },
      ),

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
          path: '/home_screen',
          builder: (context, state) {
            return const HomeScreen();
          }),
      GoRoute(
          path: '/bookscreen',
          builder: (context, state) {
            return BookScreen();
          })
    ],
  );
}
