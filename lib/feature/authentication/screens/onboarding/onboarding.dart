import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:socialclone/feature/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:socialclone/utils/constants/sizes.dart';
import 'package:socialclone/utils/constants/texts.dart';
import 'package:socialclone/utils/helpers/device_helpers.dart';
import 'package:socialclone/utils/images.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
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
          UElevatedButton(),
        ],
      ),
    );
  }
}

class UElevatedButton extends StatelessWidget {
  const UElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: USizes.spaceBtwItems,
        child: ElevatedButton(onPressed: () {}, child: Text('Next')));
  }
}

class onBoardingDotNavigation extends StatelessWidget {
  const onBoardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: UDeviceHelper.getBottomNavigationBarHeight() * 4,
      left: UDeviceHelper.getScreenWidth(context) / 2.5,
      right: UDeviceHelper.getScreenHeight(context) / 2.5,
      child: SmoothPageIndicator(
        controller: PageController(),
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
