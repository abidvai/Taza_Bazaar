import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/colors.dart';

class ProductBrand extends StatelessWidget {
  final String brandName;
  final bool isBold;

  const ProductBrand({
    super.key, required this.brandName, required this.isBold,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
      Text(
      brandName,
      style: isBold ? Theme
          .of(context,)
          .textTheme
          .bodyMedium!
          .copyWith(color: AColors.dark.withValues(alpha: 0.9),
          fontWeight: FontWeight.bold)
          : Theme.of(context,).textTheme.bodyMedium!.copyWith(
        color: AColors.dark.withValues(alpha: 0.5),
        fontWeight: FontWeight.bold),
    maxLines: 1,
    overflow: TextOverflow.visible,
    ),
    SizedBox(width: 8),
    Icon(
    Iconsax.verify5,
    color: AColors.primary,
    )
    ,
    ]
    ,
    );
  }
}