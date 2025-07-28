import 'package:flutter/cupertino.dart';

import '../../../../../comon/widgets/custom_shape/circular_container.dart';

import '../../../../../comon/widgets/custom_shape/rounded_edges_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/device_helpers.dart';

class UPrimaryHeaderContainer extends StatelessWidget {
  const UPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return URoundedEdgesContainer(
      child: Container(
        height: 320,
        color: UColors.primary,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -160,
              child: UCircularContainer(
                height: UDeviceHelper.getScreenHeight(context) * 0.4,
                width: UDeviceHelper.getScreenHeight(context) * 0.4,
                backgroundColor: UColors.white.withOpacity(0.2), // Fix here
              ),
            ),
            Positioned(
              top: -50,
              right: -250,
              child: UCircularContainer(
                  height: 320,
                width: UDeviceHelper.getScreenHeight(context) * 0.4,
                backgroundColor: UColors.white.withOpacity(0.2), // Fix here
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}

