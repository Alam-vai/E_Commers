import 'package:flutter/material.dart';
import 'package:socialclone/utils/constants/sizes.dart';
import 'package:socialclone/utils/images.dart';

import '../../../../../comon/widgets/custom_shape/circular_container.dart';
import '../../../../../comon/widgets/image_text/vertical_image_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/texts.dart';

class UHomeCategoires extends StatelessWidget {
  const UHomeCategoires({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(

          UTexts.popularCategories,

          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.apply(color: UColors.white),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 80,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(width:USizes.spaceBtwItems,),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return UVerticalImageText(
                title: 'sou',
                image: UImages.sportsIcon,
                textColor: UColors.white,
              );
            },
          ),
        ),
      ],
    );
  }
}
