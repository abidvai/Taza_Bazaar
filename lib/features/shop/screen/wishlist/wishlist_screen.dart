import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taza_bazar/common/appbar/appbar.dart';
import 'package:taza_bazar/common/products/product_card/product_card.dart';
import 'package:taza_bazar/navigation_menu.dart';
import 'package:taza_bazar/utils/constants/colors.dart';
import 'package:taza_bazar/utils/constants/images.dart';
import 'package:taza_bazar/utils/helpers/helper_functions.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 325,
          mainAxisSpacing: 10,
          crossAxisSpacing: 18
        ),
        itemBuilder: (context, index) {
          return ProductCard(
            discountPriceTag: '20%',
            productImage: AImages.product_15,
            productTitle: 'Blue Bata Shoes',
            brandName: 'Bata',
            productPrice: '124',
            isDiscount: false,
          );
        },
      ),
    );
  }
}
