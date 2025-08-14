import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../../utils/constants/colors.dart';

class AddressCard extends StatelessWidget {
  final String name;
  final String number;
  final String address;
  final bool showActive;

  const AddressCard({
    super.key,
    required this.size,
    required this.name,
    required this.number,
    required this.address,
    required this.showActive,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      width: size.width,
      height: size.height * .1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AColors.black, width: 1),
      ),
      child: ListTile(
        title: Text(name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(number), Text(address)],
        ),
        trailing:
        showActive
            ? Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Icon(
            Iconsax.tick_circle,
            size: 30,
            color: Colors.blue,
          ),
        )
            : null,
        isThreeLine: true,
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
