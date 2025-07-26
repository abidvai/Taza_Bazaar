
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/text.dart';

Widget signUpHeader(BuildContext context, Size size) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Icons.arrow_back),
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(),
      ),
      SizedBox(height: size.height * .050),
      Text(AText.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
    ],
  );
}