import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taza_bazar/features/authentication/screens/login_screen/widgets/text_input_field.dart';
import 'package:taza_bazar/navigation_menu.dart';

import '../../../../../common/widgets/filled_button.dart';
import '../../../../../common/widgets/outline_button.dart';
import '../../../../../utils/constants/text.dart';
import '../../forget_password/forget_password_screen.dart';
import '../../signup_screen/signup_screen.dart';

Widget loginForm({
  required TextEditingController nameController,
  required TextEditingController passwordController,
  required GlobalKey<FormState> key,
  required bool isCheck,
  required Size size,
  required BuildContext context,
}) {
  return Form(
    key: key,
    child: Column(
      children: [
        aTextInputField(
          controller: nameController,
          hint: 'name',
          prefix: Iconsax.direct_right,
          validation: (value) {
            if (value == null || value.isEmpty) {
              return 'Password is required';
            }
            return null;
          },
        ),
        SizedBox(height: size.height * .016),
        aTextInputField(
          controller: passwordController,
          hint: 'Password',
          prefix: Iconsax.password_check,
          suffix: Iconsax.eye_slash,
          validation: (value) {
            if (value == null || value.isEmpty) {
              return 'Password is required';
            }
            return null;
          },
        ),
        SizedBox(height: size.height * .016),

        /// Remember me and forgot password
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: isCheck,
                  onChanged: (value) {
                    isCheck = value!;
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                Text(AText.rememberMe),
              ],
            ),
            GestureDetector(
              onTap: () {
                Get.to(ForgetPasswordScreen());
              },
              child: Text(
                AText.forgetPassword,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * .024),
        AFilledButton(context, 'Sign In', () async {
          if (key.currentState!.validate()) {
            Get.snackbar(
              'login',
              'login Successful',
              snackPosition: SnackPosition.BOTTOM,
            );
            Get.to(NavigationMenu());
          }
        }),
        SizedBox(height: 10),
        AOutlineButton(context, 'Create Account', () {
          Get.to(SignupScreen());
        }),
      ],
    ),
  );
}
