import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taza_bazar/common/style/padding.dart';
import 'package:taza_bazar/features/authentication/screens/forget_password/forget_password_screen.dart';
import 'package:taza_bazar/utils/constants/text.dart';
import '../../../../common/widgets/filled_button.dart';
import '../../../../utils/constants/images.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                padding: APadding.screenPadding(context),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.height * .036),
              child: Column(
                children: [
                  Text(
                    AText.verifyEmailTitle,
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(fontSize: 22),
                  ),
                  SizedBox(height: 8),
                  Text('abid@gmail.com'),
                  SizedBox(height: 8),
                  Text(AText.verifyEmailSubtitle, textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleSmall,),
                  SizedBox(height: 48),
                  AFilledButton(context, 'Done', () {}),
                  SizedBox(height: 16),
                  Text('Resend Email'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
