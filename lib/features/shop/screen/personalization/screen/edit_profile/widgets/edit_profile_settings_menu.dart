import 'package:flutter/material.dart';
import 'package:taza_bazar/utils/constants/colors.dart';

class EditProfileSettingsMenu extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final VoidCallback? onTap;

  const EditProfileSettingsMenu({
    super.key,
    required this.value,
    required this.title,
    this.onTap, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: AColors.yellow.withValues(alpha: 0.1),
      splashFactory: InkRipple.splashFactory,
      radius: 10,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 4,
            child: Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(color: Colors.grey),
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(
              value,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontSize: 14),
            ),
          ),
          Expanded(flex: 1, child: Icon(icon)),
        ],
      ),
    );
  }
}
