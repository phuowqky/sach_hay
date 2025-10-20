// home_controller.dart
import 'package:get/get.dart';

class HomeController extends GetxController {
  // Observable variable
  var selectedIndex = 0.obs;
  
  // Method to change tab
  void changeTab(int index) {
    selectedIndex.value = index;
  }
  
  // Getter (optional, for better access)
  int get currentIndex => selectedIndex.value;
}