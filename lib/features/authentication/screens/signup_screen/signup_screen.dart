import 'package:flutter/material.dart';
import 'package:taza_bazar/common/widgets/login_signup/auth_bottom.dart';
import 'package:taza_bazar/features/authentication/screens/signup_screen/widgets/signup_form.dart';
import 'package:taza_bazar/features/authentication/screens/signup_screen/widgets/signup_header.dart';

import '../../../../utils/constants/text.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.height * .036, vertical: size.width * .016),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /// Signup Header
                  signUpHeader(context, size),
                  SizedBox(height: size.height * .024),

                  /// Signup Form
                  SignUpForm(firstNameController: firstNameController, size: size, lastNameController: lastNameController, emailController: emailController, phoneNumberController: phoneNumberController, passwordController: passwordController),
                  SizedBox(height: size.height * .024),

                  /// SignUp Footer
                  authBottom(context, AText.orSignUpWith),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


