import 'package:flutter/material.dart';
import 'package:taza_bazar/common/products/product_card/product_card.dart';
import 'package:taza_bazar/common/widgets/text/section_heading.dart';
import 'package:taza_bazar/features/shop/screen/product_detail/product_detail_Screen.dart';
import 'package:taza_bazar/features/shop/screen/store/widgets/a_primary_header.dart';
import 'package:taza_bazar/features/shop/screen/store/widgets/brand_cart.dart';
import 'package:taza_bazar/features/shop/screen/store/widgets/product_display_vertical_container.dart';
import 'package:taza_bazar/utils/constants/images.dart';

import '../../../../common/appbar/tab_bar.dart';
import '../../../../utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    bool dark = AHelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          clipBehavior: Clip.antiAlias,
          floatHeaderSlivers: false,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: size.height * .38,
                surfaceTintColor: Colors.transparent,
                shadowColor: Colors.transparent,
                pinned: true,
                floating: false,
                flexibleSpace: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AStorePrimaryHeader(size: size),
                      SizedBox(height: size.height * .028),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.height * .024,
                          vertical: size.width * .024,
                        ),

                        child: Column(
                          children: [
                            ASectionHeading(title: 'Brands', actionButton: true,),
                            SizedBox(height: size.height * .011),
                            SizedBox(
                              height: size.height * .08,
                              child: ListView.separated(
                                separatorBuilder:
                                    (context, index) =>
                                        SizedBox(width: size.width * .02),
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return ABrandCard(size: size, dark: dark);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: ATabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.height * .024,
                    vertical: size.width * .024,
                  ),
                  child: Column(
                    children: [
                      ProductHighlightVerticalContainer(
                        size: size,
                        dark: dark,
                        brandName: 'Bata',
                        availableProduct: '172 Products',
                        displayImage1: AImages.mobile,
                        displayImage2: AImages.product_15,
                        display1Image3: AImages.shirt,
                        brandImage: AImages.bata,
                      ),
                      SizedBox(height: size.height * .016),
                      ProductHighlightVerticalContainer(
                        size: size,
                        dark: dark,
                        brandName: 'Bata',
                        availableProduct: '172 Products',
                        displayImage1: AImages.mobile,
                        displayImage2: AImages.product_15,
                        display1Image3: AImages.shirt,
                        brandImage: AImages.bata,
                      ),
                      SizedBox(height: size.height * .024),
                      ASectionHeading(title: 'You might like', onPress: () {}, actionButton: true,),
                      SizedBox(
                        child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: 10,
                          physics: NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.symmetric(vertical: 24),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisExtent: size.height * .31,
                                crossAxisSpacing: size.height * .025,
                                mainAxisSpacing: size.width * .025,
                              ),
                          itemBuilder: (context, index) {
                            return ProductCard(
                              discountPriceTag: '9%',
                              productImage: AImages.product_15,
                              productTitle: 'Shoes of Nike',
                              brandName: 'Nike',
                              productPrice: '399',
                              onTap: (){},
                              isDiscount: false,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
