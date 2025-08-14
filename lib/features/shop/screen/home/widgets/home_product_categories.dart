import 'package:flutter/material.dart';

import '../../../../../common/image_text/vertical_image_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/text.dart';

class HomeProductCategories extends StatelessWidget {
  const HomeProductCategories({
    super.key,
    required this.size,
    required this.dark,
  });

  final Size size;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: size.height * .046),
          child: Text(
            AText.popularCategories,
            style: Theme.of(
              context,
            ).textTheme.labelLarge!.apply(color: AColors.grey),
          ),
        ),
        SizedBox(height: size.height * .01),
        SizedBox(
          height: size.height * .12,
          child: VerticalImageText(
            size: size,
            dark: dark,
            title: 'Sports',
            image: AImages.sports,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}