import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../common/widgets/filled_button.dart';
import '../../../../../utils/constants/colors.dart';
import '../../congro_screen/congo_screen.dart';
import '../../login_screen/widgets/text_input_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.firstNameController,
    required this.size,
    required this.lastNameController,
    required this.emailController,
    required this.phoneNumberController,
    required this.passwordController,
  });

  final TextEditingController firstNameController;
  final Size size;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController phoneNumberController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    bool isCheck = false;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
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

        /// Terms and Condition Section
        SizedBox(height: size.height * .016),
        Row(
          children: [
            Checkbox(
              value: isCheck,
              onChanged: (value) => value = isCheck,
            ),
            RichText(
              text: TextSpan(
                text: 'I agree to ',
                style: Theme.of(context).textTheme.labelLarge,
                children: [
                  TextSpan(
                    text: 'Privacy Policy ',
                    style: TextStyle(
                      color: AColors.primary,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(text: ' and ', style: Theme.of(context).textTheme.labelLarge),
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
      ],
    );
  }
}