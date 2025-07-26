import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../custom_shape/clipper/circular_container.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.size,
    required this.dark,
    required this.title,
    this.onTap,
    required this.image,
  });

  final Size size;
  final bool dark;
  final String title;
  final String image;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(width: size.width * .05),
      padding: EdgeInsets.symmetric(
        horizontal: size.height * .045,
        vertical: 5,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: onTap,
          child: Column(
            children: [
              ACircularContainer(
                padding: EdgeInsets.all(6),
                height: 56,
                width: 56,
                backgroundColor: dark ? AColors.dark : AColors.light,
                child: Image.asset(image),
              ),
              SizedBox(height: 10),
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: AColors.grey),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
        );
      },
    );
  }
}
