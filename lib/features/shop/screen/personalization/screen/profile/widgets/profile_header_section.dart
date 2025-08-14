import 'package:flutter/material.dart';

import '../../../../../../../common/custom_shape/clipper/aprimary_header_container.dart';
import '../../../../../../../common/images/circular_image.dart';
import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/constants/images.dart';

class AProfilePrimaryHeader extends StatelessWidget {
  const AProfilePrimaryHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: size.height * .17 + 60),

        APrimaryHeaderContainer(
          height: size.height * .17,
          child: Container(),
        ),

        /// User Profile Picture
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(
            child: ACircularImage(
              fit: BoxFit.cover,
              image: AImages.profile_image,
              isNetworkImage: false,
              width: 120,
              height: 120,
              padding: 0,
              showBorder: true,
              borderWidth: 4,
              borderColor: AColors.primary,
              backgroundColor: AColors.light,
            ),
          ),
        ),
      ],
    );
  }
}
