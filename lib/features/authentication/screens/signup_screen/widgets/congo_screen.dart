import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taza_bazar/common/style/padding.dart';
import 'package:taza_bazar/features/authentication/screens/login_screen/login_screen.dart';
import 'package:taza_bazar/utils/constants/text.dart';
import '../../../../../common/widgets/filled_button.dart';
import '../../../../../utils/constants/images.dart';

class CongoScreen extends StatelessWidget {
  const CongoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: size.height * .2),
            Image.asset(
              AImages.account_creation,
              width: double.infinity,
              height: size.height * .3,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: APadding.screenPadding(context),
              child: Column(
                children: [
                  Text(
                    AText.congoTitle,
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(fontSize: 22),
                  ),
                  SizedBox(height: size.height * .02),
                  Text(
                    AText.congoSubtitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: size.height * .046),
                  AFilledButton(context, 'Continue', () {
                    Get.off(LoginScreen());
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
