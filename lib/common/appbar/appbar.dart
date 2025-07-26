import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../utils/constants/colors.dart';
import '../../utils/helpers/helper_functions.dart';

class AAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AAppBar({
    super.key,
    this.title,
    this.leadingIcon,
    this.actions,
    this.leadingOnPress,
    this.showBackArrow = false,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPress;

  @override
  Widget build(BuildContext context) {
    bool dark = AHelperFunctions.isDarkMode(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.0),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading:
        showBackArrow
            ? IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Iconsax.arrow_left,
            color: dark ? AColors.white : AColors.dark,
          ),
        )
            : leadingIcon != null
            ? IconButton(
          onPressed: () => leadingOnPress,
          icon: Icon(leadingIcon),
        )
            : null,

        /// Title
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
