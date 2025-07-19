import 'package:flutter/material.dart';
import 'package:taza_bazar/utils/constants/text.dart';

import '../../../../../utils/constants/images.dart';
import '../../login_screen/widgets/auth_container.dart';

Widget authBottom(BuildContext context) {
  final size = MediaQuery.sizeOf(context);
  return  Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
        children: [
          Expanded(child: Divider()),
          SizedBox(width: size.width * .020),
          Text(AText.orSignInWith),
          SizedBox(width: size.width * .020),
          Expanded(child: Divider()),
        ],
      ),
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