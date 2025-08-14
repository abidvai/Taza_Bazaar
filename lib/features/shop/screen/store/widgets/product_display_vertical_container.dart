import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taza_bazar/common/widgets/product_brand.dart';
import 'package:taza_bazar/features/shop/screen/store/widgets/brand_cart.dart';
import 'package:taza_bazar/features/shop/screen/store/widgets/productImage_display_container.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images.dart';

class ProductHighlightVerticalContainer extends StatelessWidget {
  final String brandName;
  final String availableProduct;
  final String brandImage;
  final String displayImage1;
  final String displayImage2;
  final String display1Image3;

  const ProductHighlightVerticalContainer({
    super.key,
    required this.size,
    required this.dark, required this.brandName, required this.availableProduct, required this.brandImage, required this.displayImage1, required this.displayImage2, required this.display1Image3,
  });

  final Size size;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.22,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              color: dark ? AColors.light : AColors.dark,
              width: 1
          ),
          color: Colors.transparent
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image(image: AssetImage(AImages.bata), fit: BoxFit.cover, width: 40, height: 40),
                SizedBox(width: 10,),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductBrand(brandName: brandName),
                    SizedBox(height: 2,),
                    Text(availableProduct, style: Theme.of(context).textTheme.bodyLarge,)
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  ProductImageDisplayContainerSm(image: displayImage1,),
                  SizedBox(width: 4,),
                  ProductImageDisplayContainerSm(image: displayImage2),
                  SizedBox(width: 4,),
                  ProductImageDisplayContainerSm(image: display1Image3),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
