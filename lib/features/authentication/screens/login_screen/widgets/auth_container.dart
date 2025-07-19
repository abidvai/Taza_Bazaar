import 'package:flutter/material.dart';
import 'package:taza_bazar/utils/constants/colors.dart';

Widget authContainer(BuildContext context, String path, VoidCallback onTap) {
  final size = MediaQuery.sizeOf(context);
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: size.width * .14,
      height: size.height * .1,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AColors.black.withOpacity(0.3)),
        shape: BoxShape.circle,
      ),
      child: Image.asset(path),
    ),
  );
}
