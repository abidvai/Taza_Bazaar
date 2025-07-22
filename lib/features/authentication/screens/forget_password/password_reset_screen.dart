import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taza_bazar/common/style/padding.dart';
import 'package:taza_bazar/features/authentication/screens/forget_password/forget_password_screen.dart';
import 'package:taza_bazar/features/authentication/screens/forget_password/verify_email_screen.dart';
import 'package:taza_bazar/utils/constants/text.dart';
import '../../../../common/widgets/filled_button.dart';
import '../../../../utils/constants/images.dart';

class PasswordResetScreen extends StatelessWidget {
  const PasswordResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: APadding.screenPadding(context),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    Get.off(ForgetPasswordScreen());
                  },
                  icon: Icon(Icons.close),
                ),
              ),
              SizedBox(height: size.height * .036),
              Image.asset(
                AImages.reset_password,
                width: double.infinity,
                height: size.height * .3,
                fit: BoxFit.cover,
              ),
              Text(
                AText.passwordEmailSent,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontSize: 22),
              ),
              SizedBox(height: 8),
              Text(
                'abid@gmail.com',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                AText.passwordEmailSentSub,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(height: 48),
              AFilledButton(context, 'Done', () {
                Get.to(VerifyEmailScreen());
              }),
              SizedBox(height: 16),
              Text('Resend Email'),
            ],
          ),
        ),
      ),
    );
  }
}
