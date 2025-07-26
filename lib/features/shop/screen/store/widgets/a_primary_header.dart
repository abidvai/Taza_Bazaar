import 'package:flutter/material.dart';

import '../../../../../common/appbar/appbar.dart';
import '../../../../../common/products/cart/cart_counter.dart';
import '../../../../../common/textfields/searchbar.dart';
import '../../../../../utils/constants/colors.dart';
import '../../home/widgets/aprimary_header_container.dart';

class AStorePrimaryHeader extends StatelessWidget {
  const AStorePrimaryHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        APrimaryHeaderContainer(
          height: size.height * .17,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AAppBar(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * .01),
                    Text(
                      'Store',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: AColors.grey),
                    ),
                  ],
                ),
                actions: [cartCounter(context)],
              ),
              SizedBox(height: size.height * .020),
            ],
          ),
        ),

        /// SearchBar
        ASearchbar(),
      ],
    );
  }
}
