import 'package:flutter/material.dart';

class ARoundedImage extends StatelessWidget {
  final String image;
  final bool isNetworkImage;
  final String? imageUrl;

  const ARoundedImage({super.key, required this.image, required this.isNetworkImage,this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image(
        image: isNetworkImage ? NetworkImage(imageUrl!) : AssetImage(image),
        fit: BoxFit.cover,
      ),
    );
  }
}
