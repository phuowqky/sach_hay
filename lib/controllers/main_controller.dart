import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sach_hay/view/screens/advise_screen.dart';
import 'package:sach_hay/view/screens/home_screen.dart';
import 'package:sach_hay/view/screens/library_book_screen.dart';
import 'package:sach_hay/view/screens/ranking_screen.dart';


class MainController extends GetxController {
  RxInt selectedIndex = 0.obs;

  final List<Widget> screens = [
    HomeScreen(),
     LibraryBookScreen(),
    // ProfileScreen(),
    // AdviseScreen(),
    RankingScreen(),
  ];

  void changeTab(int index) {
    selectedIndex.value = index;
  }
}
