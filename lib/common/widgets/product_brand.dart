import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taza_bazar/utils/helpers/helper_functions.dart';

import '../../utils/constants/colors.dart';

class ProductBrand extends StatelessWidget {
  final String brandName;

  const ProductBrand({super.key, required this.brandName});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          brandName,
          style:
              dark
                  ? Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: AColors.light.withValues(alpha: 0.5),
                    fontWeight: FontWeight.bold,
                  )
                  : Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: AColors.dark.withValues(alpha: 0.8),
                    fontWeight: FontWeight.bold,
                  ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(width: 8),
        Icon(Iconsax.verify5, color: AColors.primary),
      ],
    );
  }
}
