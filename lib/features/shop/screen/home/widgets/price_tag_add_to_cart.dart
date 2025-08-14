import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';

class PriceTagAddToCart extends StatelessWidget {
  final String productPrice;
  final String beforePrice;
  final bool isDiscounted;
  final VoidCallback? onTap;

  const PriceTagAddToCart({
    super.key,
    required this.productPrice,
    required this.beforePrice,
    required this.isDiscounted,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text('\$$productPrice'),
            SizedBox(width: 10),
            isDiscounted
                ? Text(
              '\$$beforePrice',
              style: TextStyle(decoration: TextDecoration.lineThrough, decorationColor: Colors.black, decorationThickness: 2),
            )
                : Text(''),
          ],
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 44,
            height: 40,
            decoration: BoxDecoration(
              color: AColors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Icon(Iconsax.add, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
