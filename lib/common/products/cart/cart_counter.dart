import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

Widget cartCounter(BuildContext context) {
  bool dark = AHelperFunctions.isDarkMode(context);

  return Stack(
    clipBehavior: Clip.none,
    children: [
      /// Bag Icon
      Icon(
        Iconsax.shopping_bag,
        color: AColors.light,
      ),

      /// Counter Text
      Positioned(
        right: -1,
        bottom: 18,
        child: Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: dark ? AColors.dark : AColors.light,
          ),
          child: Center(
            child: Text(
              '2',
              style: Theme.of(context).textTheme.labelLarge!
                  .apply(fontSizeFactor: 0.9),
            ),
          ),
        ),
      ),
    ],
  );
}