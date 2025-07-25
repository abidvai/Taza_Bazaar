import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class ACircularContainer extends StatelessWidget {
  const ACircularContainer({
    super.key,
    this.height,
    this.width,
    this.backgroundColor = AColors.white,
    this.padding,
    this.margin,
    this.child,
  });

  final double? height, width;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding, margin;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
