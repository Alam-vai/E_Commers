import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/images.dart';

class Uloginsocial extends StatelessWidget {
  const Uloginsocial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: UColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              UImages.googleIcon,
              height: USizes.iconMd,
              width: USizes.iconMd,
            ),
          ),
        ),
        SizedBox(width: USizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: UColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              UImages.facebookIcon,
              height: USizes.iconMd,
              width: USizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}




