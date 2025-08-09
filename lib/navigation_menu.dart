import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:socialclone/feature/shop/screens/Wishlist/Wishlist.dart';
import 'package:socialclone/feature/shop/screens/home/home.dart';
import 'package:socialclone/feature/shop/screens/store/store.dart';
import 'package:socialclone/utils/constants/colors.dart';

import 'package:socialclone/utils/helpers/helper_functions.dart';

import 'feature/personalization/screens/profile/profile.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    bool dark = UHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
            () => NavigationBar(
          elevation: 0,
          backgroundColor: dark ? UColors.dark : UColors.light,
          indicatorColor: dark
              ? UColors.light.withValues(alpha: 0.1)
              : UColors.dark.withValues(alpha: 0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (int index) {
            controller.selectedIndex.value = index;
            print("Selected index: $index");
          },
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
    );
  }
}

// ✅ Renamed controller to avoid naming conflict
class NavigationController extends GetxController {
  static NavigationController get instance =>Get.find();
  RxInt selectedIndex = 0.obs;

  List<Widget> screens = [
    // Replace these with your actual screens
    HomeScreen(),
    StoreScreen(),
     WishlistScreen(),
    ProfileScreen(),
  ];
}