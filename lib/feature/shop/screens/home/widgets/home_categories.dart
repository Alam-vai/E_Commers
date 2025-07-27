

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../comon/widgets/custom_shape/circular_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

Column UHomeCategories(BuildContext context) {
  return Column(
    children: [
      Text(
        UTexts.popularCategories,
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.apply(color: UColors.white),
      ),
      SizedBox(height: USizes.spaceBtwItems / 2),

      SizedBox(
        height: 80,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,

          itemBuilder: (context, index) {
            return Column(
              children: [
                UCircularContainer(height: 56, width: 56),
                SizedBox(
                  width:55,
                  child: Text(
                    "Sport Category",
                    style: Theme.of(context).textTheme.labelMedium!
                        .apply(color: UColors.white),overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    ],
  );
}