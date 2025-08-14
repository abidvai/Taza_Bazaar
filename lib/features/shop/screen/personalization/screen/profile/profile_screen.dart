import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taza_bazar/common/widgets/outline_button.dart';
import 'package:taza_bazar/common/widgets/text/section_heading.dart';
import 'package:taza_bazar/features/shop/screen/personalization/screen/change_address/change_address_screen.dart';
import 'package:taza_bazar/features/shop/screen/personalization/screen/edit_profile/edit_profile_screen.dart';
import 'package:taza_bazar/features/shop/screen/personalization/screen/my_orders/my_orders_screen.dart';
import 'package:taza_bazar/features/shop/screen/personalization/screen/profile/widgets/profile_header_section.dart';
import 'package:taza_bazar/features/shop/screen/personalization/screen/profile/widgets/settings_menu_item.dart';
import 'package:taza_bazar/utils/constants/colors.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            AProfilePrimaryHeader(size: size),
            Padding(
              padding: EdgeInsets.all(size.height * .024),
              child: Column(
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.transparent,
                    child: ListTile(
                      onTap: () {
                        Get.to(EditProfileScreen());
                      },
                      splashColor: AColors.success.withValues(alpha: 0.1),
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        'Abdullah Al abid',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      subtitle: Text(
                        'abdullaabid1660@gmail.com',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      trailing: Icon(Iconsax.edit),
                    ),
                  ),
                  SizedBox(height: size.height * .024),

                  ASectionHeading(
                    title: 'Account Settings',
                    actionButton: false,
                  ),
                  SizedBox(height: size.height * .010),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.height * .024,
                    ),
                    child: Column(
                      children: [
                        SettingMenuItem(
                          leadingIcon: Iconsax.edit,
                          title: 'My Addresses',
                          subtitle: 'Set shopping delivery addresses',
                          onTap: () {
                            Get.to(ChangeAddressScreen());
                          },
                        ),
                        SettingMenuItem(
                          leadingIcon: Iconsax.shopping_cart,
                          title: 'My Cart',
                          subtitle: 'Add, remove products and move to checkout',
                          onTap: () {},
                        ),
                        SettingMenuItem(
                          leadingIcon: Iconsax.shopping_bag,
                          title: 'My Orders',
                          subtitle: 'In-progress and Completed Orders',
                          onTap: () {
                            Get.to(MyOrdersScreen());
                          },
                        ),

                        SizedBox(height: size.height * .024),
                        AOutlineButton(context, 'Logout', () {}),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
