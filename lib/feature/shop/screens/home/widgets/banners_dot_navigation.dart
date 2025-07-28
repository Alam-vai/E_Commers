
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannersDotNavigation extends StatelessWidget {


  @override
  Widget build(BuildContext context) {


    return SmoothPageIndicator(
      // Use the controller's pageController here
      count: 3,
      effect: ExpandingDotsEffect(
        dotWidth: 10,
        dotHeight: 10,
        activeDotColor: Theme.of(context).colorScheme.primary,
        dotColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
      ), controller: PageController(), //
    );
  }
}