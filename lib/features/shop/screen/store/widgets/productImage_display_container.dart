import 'package:flutter/material.dart';


class ProductImageDisplayContainerSm extends StatelessWidget {

  final String image;

  const ProductImageDisplayContainerSm({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width * .25,
      height: size.height * .08,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 28),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.withValues(alpha: 0.3)
      ),
      child: Image(image: AssetImage(image), fit: BoxFit.cover, ),
    );
  }
}
