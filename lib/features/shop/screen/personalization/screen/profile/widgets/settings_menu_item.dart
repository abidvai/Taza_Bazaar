import 'package:flutter/material.dart';

class SettingMenuItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData leadingIcon;
  final VoidCallback? onTap;

  const SettingMenuItem({
    super.key, required this.title, required this.subtitle, required this.leadingIcon, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: onTap,
      leading: Icon(leadingIcon),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
