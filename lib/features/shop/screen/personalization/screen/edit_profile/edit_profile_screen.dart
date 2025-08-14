import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taza_bazar/common/images/circular_image.dart';
import 'package:taza_bazar/common/widgets/text/section_heading.dart';
import 'package:taza_bazar/features/shop/screen/personalization/screen/change_address/change_address_screen.dart';
import 'package:taza_bazar/features/shop/screen/personalization/screen/change_name/change_name_screen.dart';
import 'package:taza_bazar/features/shop/screen/personalization/screen/edit_profile/widgets/edit_profile_settings_menu.dart';
import 'package:taza_bazar/utils/constants/colors.dart';
import 'package:taza_bazar/utils/constants/images.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 130,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Center(
                    child: ACircularImage(
                      image: AImages.profile_image,
                      isNetworkImage: false,
                      width: 120,
                      height: 120,
                      padding: 0,
                      showBorder: true,
                      borderWidth: 4,
                      borderColor: AColors.primary,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: MediaQuery.of(context).size.width / 2 - 40,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.3),
                        shape: BoxShape.circle,
                        border: Border.all(color: AColors.primary, width: 1),
                      ),
                      child: Icon(
                        Iconsax.edit,
                        size: 20,
                        color: AColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * .016),
            Divider(),
            SizedBox(height: size.height * .016),
            ASectionHeading(title: 'Account Settings', actionButton: false),
            SizedBox(height: size.height * .016),
            EditProfileSettingsMenu(
              title: 'Name',
              value: 'Abdullah Al Abid',
              icon: Iconsax.arrow_right_34,
              onTap: (){
                Get.to(ChangeNameScreen());
              },
            ),
            SizedBox(height: size.height * .016),
            EditProfileSettingsMenu(
              title: 'Username',
              value: 'abid908',
              icon: Iconsax.arrow_right_34,
            ),
            SizedBox(height: size.height * .016),
            Divider(),
            SizedBox(height: size.height * .016),
            EditProfileSettingsMenu(
              title: 'User ID',
              value: '221-35-908',
              icon: Iconsax.copy,
            ),
            SizedBox(height: size.height * .016),
            EditProfileSettingsMenu(
              title: 'Email',
              value: 'abid1660@gmail.com',
              icon: Iconsax.arrow_right_34,
            ),
            SizedBox(height: size.height * .016),
            EditProfileSettingsMenu(
              title: 'Phone Number',
              value: '01770960950',
              icon: Iconsax.arrow_right_34,
            ),
            SizedBox(height: size.height * .016),
            EditProfileSettingsMenu(
              title: 'Gender',
              value: 'Male',
              icon: Iconsax.arrow_right_34,
            ),
            SizedBox(height: size.height * .016),
            Divider(),
            SizedBox(height: size.height * .016),
            InkWell(
              highlightColor: Colors.red.withValues(alpha: 0.2),
              onTap: () {
                //TODO: Delete Account
              },
              child: Text(
                'Close Account',
                style: TextStyle(color: AColors.error),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
