import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taza_bazar/common/style/shadow.dart';
import 'package:taza_bazar/utils/helpers/helper_functions.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/text.dart';

class ASearchbar extends StatelessWidget {
  const ASearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final dark = AHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: -19,
      right: 36,
      left: 36,
      child: Container(
        height: size.height * .064,
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: dark ? AColors.dark : AColors.light,
          boxShadow: AShadow.searchBarShadow
        ),
        child: Row(
          children: [
            Icon(Iconsax.search_normal, color: AColors.darkerGrey,),
            SizedBox(width: size.width * .02,),
            Text(AText.searchBarTitle, style: Theme.of(context).textTheme.bodySmall,)
          ],
        ),
      ),
    );
  }
}
