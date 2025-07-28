import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taza_bazar/features/authentication/screens/login_screen/login_screen.dart';
import 'package:taza_bazar/features/shop/screen/product_detail/product_detail_Screen.dart';
import '../../../features/shop/screen/home/widgets/price_tag_add_to_cart.dart';
import '../../../features/shop/screen/home/widgets/product_heading_part.dart';
import '../../../utils/constants/colors.dart';
import '../../style/shadow.dart';
import '../../widgets/product_brand.dart';
import '../../widgets/product_title.dart';

class ProductCard extends StatelessWidget {
  final String discountPriceTag;
  final String productImage;
  final String productTitle;
  final String brandName;
  final String productPrice;
  final String? discountedDeprecated;
  final VoidCallback? onTap;

  const ProductCard({
    super.key,
    required this.discountPriceTag,
    required this.productImage,
    required this.productTitle,
    required this.brandName,
    required this.productPrice,
    this.discountedDeprecated = '', this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
              image: productImage,
              discountTagPrice: discountPriceTag,
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ProductTitle(title: productTitle, smallTitle: true),
                  ProductBrand(brandName: brandName),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: PriceTagAddToCart(
                productPrice: productPrice,
                beforePrice: discountedDeprecated!,
                isDiscounted: true,
                onTap: () => Get.to(LoginScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
