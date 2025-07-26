import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:socialclone/comon/widgets/button/elevated_button.dart';

import 'package:socialclone/feature/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:socialclone/feature/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:socialclone/utils/constants/sizes.dart';
import 'package:socialclone/utils/constants/texts.dart';
import 'package:socialclone/utils/helpers/device_helpers.dart';
import 'package:socialclone/utils/images.dart';

import '../../controllers/onboarding/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: [
                onBoardingPage(
                  animation: UImages.onboarding1Animation,
                  title: UTexts.onBoardingSubTitle1,
                  subtitle: UTexts.onBoardingSubTitle1,
                ),
                onBoardingPage(
                  animation: UImages.onboarding2Animation,
                  title: UTexts.onBoardingSubTitle2,
                  subtitle: UTexts.onBoardingSubTitle2,
                ),
                onBoardingPage(
                  animation: UImages.onboarding3Animation,
                  title: UTexts.onBoardingSubTitle3,
                  subtitle: UTexts.onBoardingSubTitle3,
                ),
              ],
            ),

            onBoardingDotNavigation(),

            // Bottom Button
            OnbordingNextButton(),

            // Skip Button
            onBoardingSkipButton(context),
          ],
        ),
      ),
    );
  }
}

class OnbordingNextButton extends StatelessWidget {
  const OnbordingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnboardingController>();
    return Positioned(
      left: 0,
      right: 0,
      bottom: USizes.spaceBtwItems,

      child: UElevatedButton(
        onPressed: controller.nextPage,
        child: Obx(() => Text(controller.currentPageIndex.value==2 ? "GetStarted" :"Next")),
      ),
    );
  }
}

class onBoardingDotNavigation extends StatelessWidget {
  const onBoardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnboardingController>();

    return Positioned(
      bottom: UDeviceHelper.getBottomNavigationBarHeight() * 4,
      left: UDeviceHelper.getScreenWidth(context) / 2.5,
      right: UDeviceHelper.getScreenHeight(context) / 2.5,
      child: SmoothPageIndicator(
        onDotClicked: (index) => controller.dotNavigationClick(index),
        controller: controller.pageController,  // Use the controller's pageController here
        count: 3,
        effect: ExpandingDotsEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: Theme.of(context).colorScheme.primary,
          dotColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
        ),
      ),
    );
  }
}

