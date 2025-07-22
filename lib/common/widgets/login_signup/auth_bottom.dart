import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/images.dart';
import '../../../utils/helpers/helper_functions.dart';
import 'auth_container.dart';

Widget authBottom(BuildContext context, String title) {
  final size = MediaQuery.sizeOf(context);
  final dark = AHelperFunctions.isDarkMode(context);

  return  Column(
    mainAxisSize: MainAxisSize.min,
    children: [

      /// Divider Section
      Row(
        children: [
          Expanded(child: Divider(indent: 60, endIndent: 5, color: dark ? AColors.darkerGrey : AColors.grey,)),
          SizedBox(width: size.width * .020),
          Text(title, style: Theme.of(context).textTheme.labelMedium,),
          SizedBox(width: size.width * .020),
          Expanded(child: Divider(indent: 5, endIndent: 60, color: dark ? AColors.darkerGrey : AColors.grey)),
        ],
      ),

      /// Social Media Login Container
      Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          authContainer(context, AImages.google, (){
            //TODO:
          }),
          SizedBox(width: 11),
          authContainer(context, AImages.facebook, (){
            //TODO:
          }),
        ],
      ),
    ],
  );
}