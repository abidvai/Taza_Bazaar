import 'package:flutter/material.dart';

class ACircularImage extends StatelessWidget {
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;
  final bool showBorder;
  final Color borderColor;
  final double borderWidth;

  const ACircularImage({
    super.key,
    this.fit,
    required this.image,
    required this.isNetworkImage,
    this.overlayColor,
    this.backgroundColor,
    required this.width,
    required this.height,
    required this.padding,
    required this.showBorder,
    required this.borderWidth,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(100),
        child: Image(
          image:
              isNetworkImage
                  ? NetworkImage(image)
                  : AssetImage(image) as ImageProvider,
          fit: fit,
        ),
      ),
    );
  }
}
