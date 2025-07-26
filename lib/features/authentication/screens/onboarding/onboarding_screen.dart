import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:taza_bazar/features/authentication/controllers/onboarding_controller.dart';
import 'package:taza_bazar/features/authentication/screens/login_screen/login_screen.dart';
import 'package:taza_bazar/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:taza_bazar/utils/constants/colors.dart';
import 'package:taza_bazar/utils/constants/images.dart';
import 'package:taza_bazar/utils/constants/text.dart';
import '../../../../common/widgets/filled_button.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final onboardController = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
              () => onboardController.isLastPage ? SizedBox(height: size.height * .056,) : Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    onboardController.pageController.jumpToPage(2);
                  },
                  child: Text(
                    'skip',
                    style: TextStyle(
                      color: AColors.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * .05),
            SizedBox(
              height: size.height * .55,
              child: PageView(
                controller: onboardController.pageController,
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                onPageChanged:
                    (value) => onboardController.updatePageIndicator(value),
                children: [
                  onBoardingWidget(
                    context,
                    AImages.onBoarding1,
                    AText.onboardingTitle1,
                    AText.onboardingSubtitle1,
                  ),
                  onBoardingWidget(
                    context,
                    AImages.onBoarding2,
                    AText.onboardingTitle2,
                    AText.onboardingSubtitle2,
                  ),
                  onBoardingWidget(
                    context,
                    AImages.onBoarding3,
                    AText.onboardingTitle3,
                    AText.onboardingSubtitle3,
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * .03),
            SmoothPageIndicator(
              controller: onboardController.pageController,
              count: 3,
              onDotClicked: (value) => onboardController.dotNavigation(value),
              effect: ExpandingDotsEffect(dotHeight: 6),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * .1),
            Obx(
              () => AFilledButton(
                context,
                onboardController.isLastPage ? 'Get Started' : 'Next',
                () {
                  onboardController.isLastPage ? Get.offAll(LoginScreen()) : onboardController.nextPage();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
