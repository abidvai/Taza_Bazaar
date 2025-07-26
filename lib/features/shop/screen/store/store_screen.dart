import 'package:flutter/material.dart';
import 'package:taza_bazar/common/widgets/text/section_heading.dart';
import 'package:taza_bazar/features/shop/screen/store/widgets/a_primary_header.dart';
import 'package:taza_bazar/features/shop/screen/store/widgets/brand_cart.dart';

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
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: size.height * .36,
                surfaceTintColor: Colors.transparent, // Add this line
                shadowColor: Colors.transparent, // Add this line

                pinned: true,
                floating: false,

                flexibleSpace: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AStorePrimaryHeader(size: size),
                      SizedBox(height: size.height * .028),
                  
                      Padding(
                        padding: EdgeInsets.only(left: size.width * .024),
                        child: Column(
                          children: [
                            ASectionHeading(title: 'Brands'),
                            SizedBox(height: size.height * .011),
                            SizedBox(
                              height: size.height * .07,
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
          body: Container(),
        ),
      ),
    );
  }
}
