import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:taza_bazar/features/authentication/screens/login_screen/widgets/auth_container.dart';
import 'package:taza_bazar/features/authentication/screens/login_screen/widgets/text_input_field.dart';
import 'package:taza_bazar/features/authentication/screens/onboarding/widgets/auth_bottom.dart';
import 'package:taza_bazar/features/authentication/screens/signup_screen/signup_screen.dart';
import 'package:taza_bazar/utils/constants/images.dart';
import 'package:taza_bazar/utils/constants/text.dart';
import 'package:taza_bazar/utils/constants/widgets/filled_button.dart';
import 'package:taza_bazar/utils/constants/widgets/outline_button.dart';

import '../forget_password/forget_password_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  bool isCheck = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.height * .036, vertical: size.width * .22),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AText.loginTitle,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  AText.loginSubtitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: size.height * .024),
                aTextInputField(
                  controller: emailController,
                  hint: 'Email',
                  prefix: Icons.play_arrow_outlined,
                  validation: (value) {},
                ),
                SizedBox(height: size.height * .016),
                aTextInputField(
                  controller: passwordController,
                  hint: 'Password',
                  prefix: Icons.keyboard,
                  suffix: Icons.visibility_off_outlined,
                  validation: (value) {},
                ),
                SizedBox(height: size.height * .016),
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
                AFilledButton(context, 'Sign In', () {
                  //TODO:
                }),
                SizedBox(height: 8),
                AOutlineButton(context, 'Create Account', () {
                  Get.to(SignupScreen());
                }),
                SizedBox(height: size.height * .024),
                authBottom(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
