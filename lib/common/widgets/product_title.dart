import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  final String title;
  final bool smallTitle;

  const ProductTitle({
    super.key, required this.title, this.smallTitle = true,

  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallTitle ? Theme.of(context).textTheme.headlineSmall : Theme.of(context).textTheme.headlineLarge,
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
    );
  }
}