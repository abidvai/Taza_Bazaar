import 'package:flutter/material.dart';

import '../../../../../common/widgets/product_brand.dart';

class BrandTitleAvailability extends StatelessWidget {
  final String title;
  final String productAvailable;

  const BrandTitleAvailability({
    super.key,
    required this.dark, required this.title, required this.productAvailable,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductBrand(brandName: title),
        Text(
          productAvailable,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style:
          dark
              ? Theme.of(
            context,
          ).textTheme.labelLarge!.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white.withValues(
              alpha: 0.4,
            ),
          )
              : Theme.of(
            context,
          ).textTheme.labelLarge!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
