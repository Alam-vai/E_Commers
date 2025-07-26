import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';
import '../../../../../utils/helpers/device_helpers.dart';
import '../../../../../utils/images.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({
    super.key,
    required this.animation,
    required this.title,
    required this.subtitle,
  });

  final String animation;

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: USizes.defaultSpace,
        right: USizes.defaultSpace,
        top: UDeviceHelper.getAppBarHeight(),
      ),
      child: Column(
        children: [
          Lottie.asset(animation),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(subtitle, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
