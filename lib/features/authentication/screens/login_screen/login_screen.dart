import 'package:flutter/material.dart';
import 'package:taza_bazar/features/authentication/screens/login_screen/widgets/login_form.dart';
import 'package:taza_bazar/features/authentication/screens/login_screen/widgets/login_header.dart';
import 'package:taza_bazar/common/widgets/login_signup/auth_bottom.dart';
import 'package:taza_bazar/utils/constants/text.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final isCheck = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.height * .036, vertical: size.width * .22),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// ------------- Header Section -------------
                ALoginHeader(),
                SizedBox(height: size.height * .024),

                /// ------------- Form section ---------------
                loginForm(nameController: nameController, passwordController: passwordController, key: formKey, isCheck: isCheck, size: size, context: context),

                /// ------------- Divider Section and Footer Section ------------
                SizedBox(height: size.height * .024),
                authBottom(context, AText.orSignInWith)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

