import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget onBoardingWidget(
  BuildContext context,
  String path,
  String title,
  String subTitle,
) {
  final size = MediaQuery.sizeOf(context);

  return Container(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          path,
          width: size.width * .9,
          height: 250,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Icon(Icons.error, size: 100, color: Colors.red);
          },
        ),
        SizedBox(height: size.height * .07),
        Text(title, style: Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontSize: 20
        ), overflow: TextOverflow.ellipsis, maxLines: 2,),
        SizedBox(height: size.height * .001),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
          maxLines: 3,
          overflow: TextOverflow.visible,
        ),
      ],
    ),
  );
}
