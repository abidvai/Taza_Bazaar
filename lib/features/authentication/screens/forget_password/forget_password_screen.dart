import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taza_bazar/features/authentication/screens/forget_password/password_reset_screen.dart';
import 'package:taza_bazar/features/authentication/screens/login_screen/login_screen.dart';
import 'package:taza_bazar/features/authentication/screens/login_screen/widgets/text_input_field.dart';
import 'package:taza_bazar/utils/constants/text.dart';
import 'package:taza_bazar/utils/constants/widgets/filled_button.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 36),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70),
              IconButton(
                onPressed: () {
                  Get.offAll(LoginScreen());
                },
                icon: Icon(Icons.arrow_back),
              ),
              SizedBox(height: 55),
              Text(
                AText.forgotPasswordTitle,
                style: Theme.of(
                  context,
                ).textTheme.headlineLarge?.copyWith(fontSize: 22),
              ),
              Text(
                AText.forgotPasswordSubtitle,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(height: 48),
              aTextInputField(
                hint: 'Email',
                prefix: Icons.play_arrow_outlined,
                validation: (value) {},
                controller: emailController,
              ),
              SizedBox(height: 24),
              AFilledButton(context, 'Submit', () {
                Get.to(PasswordResetScreen());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
