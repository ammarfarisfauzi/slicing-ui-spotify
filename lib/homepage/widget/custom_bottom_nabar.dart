import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';

class CustomBottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();

    return Obx(
      () => BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor:Color(0xFF1ED760),
        unselectedItemColor: Colors.white,
        currentIndex: controller.currentTab.value,
        onTap: controller.changeTab,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.library_music), label: "Library"),
        ],
      ),
    );
  }
}
