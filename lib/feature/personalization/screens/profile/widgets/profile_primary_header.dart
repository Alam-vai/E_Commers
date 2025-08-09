import 'package:flutter/cupertino.dart';

import '../../../../../comon/widgets/custom_shape/primary_header_container.dart';
import '../../../../../comon/widgets/images/circular_image.dart';
import '../../../../../comon/widgets/images/user_profile_logo.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';

class UProfilePrimaryHeader extends StatelessWidget {
  const UProfilePrimaryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: USizes.profilePrimaryHeaderHeight + 60),
        UPrimaryHeaderContainer(
          height: USizes.profilePrimaryHeaderHeight,
          child: Container(),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(
            child: Center(
              child: UserProfileLogo(),
            ),
          ),
        ),
      ],
    );
  }
}

