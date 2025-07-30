import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:socialclone/feature/shop/controllers/home/home_controller.dart';

class BannersDotNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Obx(
      () => SmoothPageIndicator(
        // Use the controller's pageController here
        count: 5,
        effect: ExpandingDotsEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: Theme.of(context).colorScheme.primary,
          dotColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
        ),
        controller: PageController(
          initialPage: controller.currentIndex.value,
        ), //
      ),
    );
  }
}
