import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taza_bazar/common/appbar/appbar.dart';
import 'package:taza_bazar/common/products/product_card/product_card.dart';
import 'package:taza_bazar/features/shop/screen/product_detail/product_detail_Screen.dart';
import 'package:taza_bazar/navigation_menu.dart';
import 'package:taza_bazar/utils/constants/colors.dart';
import 'package:taza_bazar/utils/constants/images.dart';
import 'package:taza_bazar/utils/helpers/helper_functions.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(
            onPressed: () {
              NavigationController.instance.selectedIndex.value = 0;
            },
            icon: Icon(
              Iconsax.add,
              color: dark ? AColors.light : AColors.dark,
              size: 30,
            ),
          ),
        ],
      ),
      body: GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: size.height * .3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 18,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ProductCard(
            discountPriceTag: '20%',
            productImage: AImages.product_15,
            productTitle: 'Blue Bata Shoes',
            brandName: 'Bata',
            productPrice: '124',
            isDiscount: false,
            onTap: () {
              Get.to(ProductDetailScreen());
            },
          );
        },
      ),
    );
  }
}
