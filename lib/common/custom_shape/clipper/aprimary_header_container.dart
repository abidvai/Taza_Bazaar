import 'package:flutter/material.dart';

import 'circular_container.dart';
import 'custom_rounded_clipper.dart';
import '../../../utils/constants/colors.dart';

class APrimaryHeaderContainer extends StatelessWidget {

  const APrimaryHeaderContainer({super.key, required this.child, required this.height});
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return ClipPath(
      clipper: ACustomRoundedEdges(),
      child: Container(
        height: height,
        width: size.width,
        decoration: BoxDecoration(color: AColors.primary),
        child: Stack(
          children: [

            /// Circular Container
            Positioned(
              right: -270,
              top: -200,
              child: ACircularContainer(height: size.height * .4, width: size.width, backgroundColor: AColors.light.withValues(alpha: 0.1),),
            ),

            /// Circular Container
            Positioned(
              right: -320,
              top: 90,
              child: ACircularContainer(height: size.height * .4, width: size.width, backgroundColor: AColors.light.withValues(alpha: 0.1),),
            ),

            /// AppBar Child
            child
          ],
        ),
      ),
    );
  }
}
