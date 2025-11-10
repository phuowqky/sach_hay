import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sach_hay/controllers/main_controller.dart';
import 'package:sach_hay/core/theme/app_colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  static const String mainScreen = '/main_screen';

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());

    return Obx(() => Scaffold(
          backgroundColor: Colors.white,
          body: IndexedStack(
            index: controller.selectedIndex.value,
            children: controller.screens,
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.white,
            currentIndex: controller.selectedIndex.value,
            onTap: controller.changeTab,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: Colors.grey[600],
            selectedFontSize: 12,
            unselectedFontSize: 12,
            elevation: 8,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Trang chủ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books_outlined),
                activeIcon: Icon(Icons.library_books),
                label: 'Thư viện',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.leaderboard_outlined),
                activeIcon: Icon(Icons.leaderboard),
                label: 'Xếp hạng',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person),
                label: 'Hồ sơ',
              ),
            ],
          ),
        ));
  }
}
