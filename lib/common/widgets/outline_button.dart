import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

Widget AOutlineButton(
    BuildContext context, String text, VoidCallback onTap
    ) {
  final size = MediaQuery.sizeOf(context);
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: size.height * .05,
      decoration: BoxDecoration(
        color: AColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 1
        )
      ),
      child: Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Colors.black,
            fontSize: 20
          ),
        ),
      ),
    ),
  );
}