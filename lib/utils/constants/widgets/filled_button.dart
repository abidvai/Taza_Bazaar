import 'package:flutter/material.dart';
import 'package:taza_bazar/utils/constants/colors.dart';

Widget AFilledButton(BuildContext context, String text, VoidCallback onTap) {
  final size = MediaQuery.sizeOf(context);
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: size.height * .05,
      decoration: BoxDecoration(
        color: AColors.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ),
  );
}
