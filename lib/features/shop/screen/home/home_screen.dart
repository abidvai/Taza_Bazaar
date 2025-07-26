import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taza_bazar/common/products/cart/cart_counter.dart';
import 'package:taza_bazar/common/style/shadow.dart';
import 'package:taza_bazar/common/textfields/searchbar.dart';
import 'package:taza_bazar/features/authentication/screens/login_screen/login_screen.dart';
import 'package:taza_bazar/features/shop/screen/home/widgets/a_promo_slider.dart';
import 'package:taza_bazar/features/shop/screen/home/widgets/aprimary_header_container.dart';
import 'package:taza_bazar/features/shop/screen/home/widgets/home_product_categories.dart';
import 'package:taza_bazar/features/shop/screen/home/widgets/price_tag_add_to_cart.dart';
import 'package:taza_bazar/features/shop/screen/home/widgets/product_heading_part.dart';
import 'package:taza_bazar/features/shop/screen/product_detail/product_detail_Screen.dart';
import 'package:taza_bazar/utils/constants/colors.dart';
import 'package:taza_bazar/utils/constants/images.dart';
import 'package:taza_bazar/utils/constants/text.dart';
import '../../../../common/appbar/appbar.dart';
import '../../../../common/widgets/product_brand.dart';
import '../../../../common/widgets/product_title.dart';
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
                        crossAxisSpacing: size.width * .07,
                        mainAxisSpacing: 25,
                        mainAxisExtent: size.height * .30,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: (){
                            Get.to(ProductDetailScreen());
                          },
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AColors.primary.withValues(alpha: 0.2),
                              boxShadow: AShadow.verticalProductShadow,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ProductHeadingPart(
                                  image: AImages.product_15,
                                  discountTagPrice: '49%',
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ProductTitle(
                                        title: 'Shoes of Nike',
                                        smallTitle: true,
                                      ),
                                      ProductBrand(brandName: 'Nike', isBold: false,),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(left: 12),
                                  child: PriceTagAddToCart(
                                    productPrice: '399',
                                    beforePrice: '599',
                                    isDiscounted: true,
                                    onTap: ()=> Get.to(LoginScreen()),
                                  ),
                                ),
                              ],
                            ),
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
