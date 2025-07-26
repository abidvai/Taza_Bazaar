import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/helpers/helper_functions.dart';

class ATabBar extends StatelessWidget implements PreferredSizeWidget{
  const ATabBar({
    super.key,
    required this.tabs
  });

  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? AColors.dark : AColors.light,
      child: Padding(
        padding: EdgeInsets.only(left: 0),
        child: TabBar(
            isScrollable: true,
            labelColor: dark ? AColors.white :  AColors.primary,
            unselectedLabelColor: AColors.darkerGrey,
            indicatorColor: AColors.primary,
            labelPadding: EdgeInsets.symmetric(horizontal: 12),
            padding: EdgeInsets.zero,
            tabs: tabs
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(46.0) ;
}
