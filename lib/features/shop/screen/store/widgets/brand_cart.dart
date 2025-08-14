import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images.dart';
import 'brand_title_avalability.dart';

class ABrandCard extends StatelessWidget {
  const ABrandCard({super.key, required this.size, required this.dark});

  final Size size;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .46,
      padding: EdgeInsets.only(top: 14, left: 8),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: dark ? AColors.grey : AColors.dark, width: 1),
      ),
      child: Row(
        children: [
          /// Brand Image
          Flexible(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image(
                image: AssetImage(AImages.bata),
                fit: BoxFit.cover,
                height: 45,
              ),
            ),
          ),
          SizedBox(width: 16),

          /// Brand Title and Availability
          Expanded(
            child: BrandTitleAvailability(
              dark: dark,
              title: 'Bata',
              productAvailable: '176 products',
            ),
          ),
        ],
      ),
    );
  }
}
