import 'package:flutter/material.dart';
import 'package:taza_bazar/utils/constants/colors.dart';
import 'package:taza_bazar/utils/helpers/helper_functions.dart';

class ASectionHeading extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final VoidCallback? onPress;
  final bool actionButton;

  const ASectionHeading({super.key, required this.title, this.onPress, this.buttonTitle = 'View All', required this.actionButton});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if(actionButton) TextButton(
          onPressed: ()=> onPress,
          child: Text(
            buttonTitle,
            style: dark ? Theme.of(context).textTheme.bodyLarge : Theme.of(context).textTheme.bodyLarge!.copyWith(color: AColors.primary),
          ),
        ),
      ],
    );
  }
}
