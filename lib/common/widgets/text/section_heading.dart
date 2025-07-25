import 'package:flutter/material.dart';

class ASectionHeading extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final VoidCallback? onPress;

  const ASectionHeading({super.key, required this.title, this.onPress, this.buttonTitle = 'View All'});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        TextButton(
          onPressed: ()=> onPress,
          child: Text(
            buttonTitle,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ],
    );
  }
}
