import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taza_bazar/common/products/cart/cart_counter.dart';
import 'package:taza_bazar/common/textfields/searchbar.dart';
import 'package:taza_bazar/features/shop/screen/home/widgets/a_promo_slider.dart';
import 'package:taza_bazar/common/custom_shape/clipper/aprimary_header_container.dart';
import 'package:taza_bazar/features/shop/screen/home/widgets/home_product_categories.dart';
import 'package:taza_bazar/features/shop/screen/product_detail/product_detail_Screen.dart';
import 'package:taza_bazar/utils/constants/colors.dart';
import 'package:taza_bazar/utils/constants/images.dart';
import 'package:taza_bazar/utils/constants/text.dart';

import '../../../../common/appbar/appbar.dart';
import '../../../../common/products/product_card/product_card.dart';
import '../../../../common/widgets/text/section_heading.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../controller/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = AHelperFunctions.isDarkMode(context);
    final size = MediaQuery.sizeOf(context);
    final controller = Get.put(HomeController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --------------  Upper Section ---------------
            Stack(
              clipBehavior: Clip.none,
              children: [
                APrimaryHeaderContainer(
                  height: size.height * .34,
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
                              style: Theme.of(context).textTheme.labelLarge!
                                  .apply(color: AColors.grey),
                            ),
                            Text(
                              AText.welcomeMessageSub,
                              style: Theme.of(context).textTheme.titleLarge!
                                  .apply(color: AColors.grey),
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
            SizedBox(height: 30),

            /// -------------------- Lower Section or Body Start here
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Banner
                  APromoSlider(
                    size: size,
                    banners: [
                      AImages.banner_1,
                      AImages.banner_2,
                      AImages.banner_3,
                      AImages.banner_4,
                      AImages.banner_5,
                      AImages.banner_6,
                    ],
                  ),

                  SizedBox(height: size.height * .012),

                  /// Section Heading
                  ASectionHeading(
                    title: AText.popularProducts,
                    buttonTitle: AText.viewAll,
                    actionButton: true,
                  ),
                  SizedBox(height: size.height * .016),

                  /// Vertical Product card
                  SizedBox(
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: size.width * .04,
                        mainAxisSpacing: 22,
                        mainAxisExtent: size.height * .33,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Get.to(ProductDetailScreen());
                          },
                          child: ProductCard(
                            discountPriceTag: '49%',
                            productImage: AImages.product_15,
                            brandName: 'Nike',
                            productTitle: 'Shoes of Nike',
                            productPrice: '399',
                            discountedDeprecated: '599',
                            onTap: () => Get.to(ProductDetailScreen()),
                            isDiscount: true,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
