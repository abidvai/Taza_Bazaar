import 'package:flutter/material.dart';

import '../../../../../utils/constants/text.dart';

class ALoginHeader extends StatelessWidget {
  const ALoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AText.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          AText.loginSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
