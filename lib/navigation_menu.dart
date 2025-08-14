import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taza_bazar/features/shop/screen/home/home_screen.dart';
import 'package:taza_bazar/features/shop/screen/store/store_screen.dart';
import 'package:taza_bazar/features/shop/screen/wishlist/wishlist_screen.dart';
import 'package:taza_bazar/utils/constants/colors.dart';
import 'package:taza_bazar/utils/helpers/helper_functions.dart';

import 'features/shop/screen/personalization/screen/profile/profile_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    bool dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          indicatorShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          labelTextStyle: WidgetStateProperty.all(
            TextStyle(fontWeight: FontWeight.bold)
          ),
          labelPadding: EdgeInsets.symmetric(vertical: 2),
          backgroundColor: dark ? AColors.dark : AColors.light,
          indicatorColor: dark ? AColors.light.withValues(alpha: 0.1) : AColors.black.withValues(alpha: 0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected:
              (index) => controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();
  RxInt selectedIndex = 0.obs;

  List<Widget> screen = [
    HomeScreen(),
    StoreScreen(),
    WishlistScreen(),
    ProfileScreen(),
  ];
}
