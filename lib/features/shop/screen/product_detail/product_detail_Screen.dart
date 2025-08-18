import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taza_bazar/common/widgets/filled_button.dart';
import 'package:taza_bazar/common/widgets/product_brand.dart';
import 'package:taza_bazar/common/widgets/text/section_heading.dart';
import 'package:taza_bazar/features/shop/model/ProductModel.dart';
import 'package:taza_bazar/features/shop/screen/home/widgets/product_heading_part.dart';
import 'package:taza_bazar/utils/constants/colors.dart';
import 'package:taza_bazar/utils/constants/images.dart';
import 'package:taza_bazar/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {

  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    final size = MediaQuery.sizeOf(context);


    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AColors.darkGrey,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12)
              )
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(55),
                  child: Image(
                    image: AssetImage(AImages.product_15),
                    fit: BoxFit.cover,
                    height: size.height * .34,
                  ),
                ),
                Positioned(
                  top: 29,
                  left: 1,
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Iconsax.arrow_left),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 29,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Iconsax.heart),
                  ),
                ),
                
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// top Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        DiscountPriceContainer(
                          discountTagPrice: '49%',
                          padding: 2,
                        ),
                        SizedBox(width: 12),
                        SizedBox(width: 12),
                        Text(
                          '\$599',
                          style: Theme.of(context).textTheme.headlineSmall?.apply(decoration: TextDecoration.lineThrough),
                        ),
                        SizedBox(width: 10,),
                        Text('\$399', style: Theme.of(context).textTheme.headlineSmall)
                      ],
                    ),
                    IconButton(onPressed: () async {

                    }, icon: Icon(Icons.share)),
                  ],
                ),

                /// Body Section
                Text('Blue Shoes of Bata', style: Theme.of(context).textTheme.headlineSmall),
                Row(
                  children: [
                    Image(image: AssetImage(AImages.bata), width: 50, height: 50,fit: BoxFit.cover,),
                    SizedBox(width: 5,),
                    ProductBrand(brandName: 'Bata'),
                  ],
                ),
                AFilledButton(context, 'Checkout', () {}),
                SizedBox(height: 20,),
                ASectionHeading(title: 'Description', actionButton: false),
                SizedBox(height: 10,),
                ReadMoreText('Bata shoes are known all over the world for their perfect blend of comfort and style. With a long history of quality craftsmanship, Bata has been a trusted brand for generations, loved by children, adults, and elders alike. Its shoes provide both durability and elegance, making every step comfortable and confident. Bata has a global presence, with popularity in countries like Bangladesh, India, Sri Lanka, and Singapore, offering affordable prices without compromising on quality. The brand’s commitment to fashion and practicality has made it a favorite among people everywhere, proving that Bata is more than just a shoe—it’s a symbol of reliability, style, and care for your feet.',
                  isExpandable: true,
                  moreStyle: TextStyle(fontSize: 16, color: AColors.primary),
                  lessStyle: TextStyle(fontSize: 16, color: AColors.darkerGrey.withValues(alpha: 0.6)),
                  textDirection: TextDirection.ltr,
                  trimExpandedText: 'Show less',
                  trimCollapsedText: 'Read more',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  trimLines: 4,
                  trimMode: TrimMode.Line,
                ),
                SizedBox(height: 20,),
                ASectionHeading(title: 'Rating', actionButton: false,),
                SizedBox(height: 5,),
                RatingBarIndicator(
                  rating: 4.5,
                  itemCount: 5,
                  itemSize: 30,
                  direction: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Icon(Icons.star, color: Colors.amber);
                  },
                  unratedColor: AColors.darkerGrey.withValues(alpha: 0.5),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        height: 80,
        color: AColors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AColors.darkerGrey.withValues(alpha: 0.5),
                  ),
                  child: Icon(Iconsax.minus, color: Colors.white, size: 20,),
                ),
                SizedBox(width: 10,),
                Text('2', style: Theme.of(context).textTheme.headlineSmall,),
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AColors.black,
                  ),
                  child: Icon(Iconsax.add, color: Colors.white),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height * .05,
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black,
                  ),
                  child: Row(
                    children: [
                      Icon(Iconsax.shopping_bag, color: Colors.white),
                      SizedBox(width: 5),
                      Text(
                        'Add To Cart',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
