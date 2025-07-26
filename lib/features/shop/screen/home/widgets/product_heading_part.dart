import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taza_bazar/utils/helpers/helper_functions.dart';

import '../../../../../common/style/shadow.dart';
import '../../../../../utils/constants/colors.dart';

class ProductHeadingPart extends StatelessWidget {
  final String image;
  final String discountTagPrice;

  const ProductHeadingPart({
    super.key,
    required this.image,
    required this.discountTagPrice,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: dark? AColors.dark : AColors.light,
            boxShadow: AShadow.verticalProductShadow,
          ),
          child: Stack(
            children: [
              Image(image: AssetImage(image), fit: BoxFit.cover,),
              Positioned(
                left: 5,
                top: 5,
                child: DiscountPriceContainer(discountTagPrice: discountTagPrice, padding: 4,),
              ),
              Positioned(
                right: 0,
                top: 4,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: AColors.dark.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(Iconsax.heart5, color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DiscountPriceContainer extends StatelessWidget {
  const DiscountPriceContainer({
    super.key,
    required this.discountTagPrice,
    required this.padding
  });

  final String discountTagPrice;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .09,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AColors.yellow,
      ),
      child: Center(
        child: Text(
          discountTagPrice,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
            color: AColors.dark
          ),
        ),
      ),
    );
  }
}