import 'package:flutter/material.dart';
import 'package:taza_bazar/common/products/cart/cart_counter.dart';
import 'package:taza_bazar/common/textfields/searchbar.dart';
import 'package:taza_bazar/features/shop/screen/home/widgets/aprimary_header_container.dart';
import 'package:taza_bazar/features/shop/screen/home/widgets/home_product_categories.dart';
import 'package:taza_bazar/utils/constants/colors.dart';
import 'package:taza_bazar/utils/constants/images.dart';
import 'package:taza_bazar/utils/constants/text.dart';

import '../../../../common/appbar/appbar.dart';
import '../../../../common/image_text/vertical_image_text.dart';
import '../../../../utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = AHelperFunctions.isDarkMode(context);
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            /// Top Section Welcoming and shopping cart
            APrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AAppBar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height * .01),
                        Text(
                          AText.welcomeMessage,
                          style: Theme.of(
                            context,
                          ).textTheme.labelLarge!.apply(color: AColors.grey),
                        ),
                        Text(
                          AText.welcomeMessageSub,
                          style: Theme.of(
                            context,
                          ).textTheme.titleLarge!.apply(color: AColors.grey),
                        ),
                      ],
                    ),
                    actions: [cartCounter(context)],
                  ),
                  SizedBox(height: size.height * .020),

                  /// Home Product Categories
                  HomeProductCategories(size: size, dark: dark),
                ],
              ),
            ),

            /// SearchBar
            ASearchbar(),
          ],
        ),
      ),
    );
  }
}


