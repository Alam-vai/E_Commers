
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shape/circular_container.dart';

class UVerticalImageText extends StatelessWidget {
  const UVerticalImageText({
    super.key,
    required this.title,
    required this.image,
    required this.textColor,
    this.backgroundColor,
    this.onTap,
  });

  final String title, image;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          /// Circular Image
          UCircularContainer(
            height: 56,
            width: 56,
            backgroundColor: backgroundColor ?? UColors.white,
            padding: EdgeInsets.all(USizes.sm),
            child: Image(image: AssetImage(image), fit: BoxFit.cover),
          ),

          SizedBox(height: USizes.spaceBtwItems / 2),

          /// Title
          SizedBox(
              width: 55,
              child: Text(title,
                  style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center))
        ],
      ),
    );
  }
}