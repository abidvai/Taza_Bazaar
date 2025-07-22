import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taza_bazar/features/authentication/screens/login_screen/widgets/text_input_field.dart';
import '../../../../../common/widgets/filled_button.dart';
import '../../../../../common/widgets/outline_button.dart';
import '../../../../../utils/constants/text.dart';
import '../../forget_password/forget_password_screen.dart';
import '../../signup_screen/signup_screen.dart';

class ALoginForm extends StatelessWidget {
  const ALoginForm({
    super.key,
    required this.emailController,
    required this.size,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final Size size;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    bool isCheck = false;

    return Column(
      children: [
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
        AFilledButton(context, 'Sign In', () {
          //TODO:
        }),
        SizedBox(height: 8),
        AOutlineButton(context, 'Create Account', () {
          Get.to(SignupScreen());
        }),
      ],
    );
  }
}