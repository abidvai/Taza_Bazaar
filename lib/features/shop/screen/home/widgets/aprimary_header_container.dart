import 'package:flutter/material.dart';

import '../../../../../common/custom_shape/clipper/circular_container.dart';
import '../../../../../common/custom_shape/clipper/custom_rounded_clipper.dart';
import '../../../../../utils/constants/colors.dart';

class APrimaryHeaderContainer extends StatelessWidget {

  const APrimaryHeaderContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return ClipPath(
      clipper: ACustomRoundedEdges(),
      child: Container(
        height: size.height * .32,
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
