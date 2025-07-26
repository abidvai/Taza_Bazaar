import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taza_bazar/common/widgets/filled_button.dart';
import 'package:taza_bazar/common/widgets/product_brand.dart';
import 'package:taza_bazar/features/shop/screen/home/widgets/product_heading_part.dart';
import 'package:taza_bazar/utils/constants/colors.dart';
import 'package:taza_bazar/utils/constants/images.dart';
import 'package:taza_bazar/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(55),
                child: Image(
                  image: AssetImage(AImages.product_15),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 29,
                left: 20,
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Iconsax.arrow_left),
                ),
              ),
              Positioned(
                right: 20,
                top: 29,
                child: IconButton(onPressed: () {}, icon: Icon(Iconsax.heart)),
              ),
            ],
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
                        Text(
                          '\$599',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            decorationColor:
                                dark ? AColors.light : AColors.dark,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 12),
                        Text(
                          '\$399',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                  ],
                ),
                
                /// Body Section
                Text('Blue Shoes of Nike '),
                Text('Stock: In Stock'),
                Row(
                  children: [
                    Image(image: AssetImage(AImages.cricket)),
                    ProductBrand(brandName: 'Nike')
                  ],
                ),
                AFilledButton(context, 'Checkout', (){}),
                Text('Description', style: Theme.of(context).textTheme.headlineSmall,),
                Text('This is a product description of BATA brand shoes. There are more things that can be added but I’m...')
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 80,
        color: Colors.red,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black
              ),
              child: Icon(Icons.add, color: Colors.white,),
            ),
            Text('2'),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black
              ),
              child: Icon(Icons.add, color: Colors.white,),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black
                  ),
                  child: Row(
                    children: [
                      Icon(Iconsax.shopping_bag, color: Colors.white,),
                      SizedBox(width: 5,),
                      Text('Add To Cart', style: TextStyle(color: Colors.white),)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
