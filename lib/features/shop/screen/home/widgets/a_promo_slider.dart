import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:taza_bazar/features/shop/screen/controller/home/home_controller.dart';

import '../../../../../common/rounded_image/rounded_image.dart';
import 'banner_dot_navigation.dart';

class APromoSlider extends StatelessWidget {
  const APromoSlider({super.key, required this.size, required this.banners});

  final List<String> banners;

  final Size size;

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;

    return Column(
      children: [
        CarouselSlider(
          items: banners.map((banner) => ARoundedImage(image: banner, isNetworkImage: false),)
                  .toList(),
          options: CarouselOptions(
            viewportFraction: 1.0,
            autoPlay: true,
            onPageChanged: (index, reason) => controller.onPageChange(index),
          ),
          carouselController: controller.carouselController,
        ),
        SizedBox(height: size.height * .01),
        BannerDotNavigation(),
      ],
    );
  }
}
