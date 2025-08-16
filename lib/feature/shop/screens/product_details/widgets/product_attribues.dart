import 'package:flutter/material.dart';
import 'package:socialclone/comon/widgets/custom_shape/rounded_container.dart';
import 'package:socialclone/comon/widgets/texts/section_heading.dart';
import 'package:socialclone/utils/constants/colors.dart';
import 'package:socialclone/utils/constants/sizes.dart';
import 'package:socialclone/utils/helpers/helper_functions.dart';

class UProductAttributes extends StatelessWidget {
  const UProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        URoundedContainer(
          padding: EdgeInsets.all(USizes.md),
          backgroundColor: dark ? UColors.darkerGrey : UColors.grey,
          child: Column(
            children: [
              USectionHeading(title: "Variation", showActionButton: false),
            ],
          ),
        ),
      ],
    );
  }
}
