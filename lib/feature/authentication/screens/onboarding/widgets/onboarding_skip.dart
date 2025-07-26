import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../utils/helpers/device_helpers.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';

Obx onBoardingSkipButton(BuildContext context) {
  final controller = Get.put(OnboardingController());
  return Obx(
      () => controller .currentPageIndex.value==2 ? SizedBox(): Positioned(
      top: UDeviceHelper.getAppBarHeight(),
      right: 0,
      child: TextButton(
        onPressed: () {
          controller.skipPage();
        },
        child: Text(
          "Skip",
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}
