import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:taza_bazar/features/authentication/screens/congro_screen/congo_screen.dart';
import 'package:taza_bazar/features/authentication/screens/login_screen/widgets/text_input_field.dart';
import 'package:taza_bazar/features/authentication/screens/onboarding/widgets/auth_bottom.dart';
import 'package:taza_bazar/utils/constants/colors.dart';
import 'package:taza_bazar/utils/constants/widgets/filled_button.dart';

import '../../../../utils/constants/text.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.height * .036, vertical: size.width * .026),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back),
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                  ),
                  SizedBox(height: size.height * .050),
                  Text(AText.signupTitle, style: Theme.of(context).textTheme.headlineLarge,),
                  SizedBox(height: size.height * .024),
                  Row(
                    children: [
                      Expanded(
                        child: aTextInputField(
                          hint: 'First Name',
                          prefix: Icons.person,
                          validation: (value) {},
                          controller: firstNameController,
                        ),
                      ),
                      SizedBox(width: size.height * .012),
                      Expanded(
                        child: aTextInputField(
                          hint: 'Last Name',
                          prefix: Icons.person,
                          validation: (value) {},
                          controller: lastNameController,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * .016),
                  aTextInputField(
                    hint: 'Email',
                    prefix: Icons.play_arrow_outlined,
                    validation: (value) {},
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress
                  ),
                  SizedBox(height: size.height * .016),
                  aTextInputField(
                    hint: 'Phone Number',
                    prefix: Icons.phone_outlined,
                    validation: (value) {},
                    controller: phoneNumberController,
                    keyboardType: TextInputType.phone
                  ),
                  SizedBox(height: size.height * .016),
                  aTextInputField(
                    hint: 'Password',
                    prefix: Icons.keyboard_alt_outlined,
                    validation: (value) {},
                    controller: passwordController,
                  ),
                  SizedBox(height: size.height * .016),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheck,
                        onChanged: (value) => isCheck = true,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'I agree to ',
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Privacy Policy ',
                              style: TextStyle(
                                color: AColors.primary,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(text: 'and '),
                            TextSpan(
                              text: 'Terms of use',
                              style: TextStyle(
                                color: AColors.primary,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * .024),
                  AFilledButton(context, 'Create Account', () {
                    Get.offAll(CongoScreen());
                  }),
                  SizedBox(height: size.height * .024),
                  authBottom(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
