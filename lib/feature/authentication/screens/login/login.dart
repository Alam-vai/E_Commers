import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:socialclone/comon/styles/padding.dart';
import 'package:socialclone/comon/widgets/button/elevated_button.dart';
import 'package:socialclone/feature/authentication/screens/login/widgets/login_form.dart';
import 'package:socialclone/feature/authentication/screens/login/widgets/login_header.dart';
import 'package:socialclone/utils/constants/colors.dart';
import 'package:socialclone/utils/constants/sizes.dart';
import 'package:socialclone/utils/constants/texts.dart';
import 'package:socialclone/utils/images.dart';

import '../../../../comon/widgets/button/social_buttons.dart';
import '../../../../comon/widgets/login_signup/form_divider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ----------------[Header]-------------
        
              // Title  $ Subtitle
              ULoginHeader(),
              SizedBox(height: USizes.spaceBtwSections),
              // ----------------[Form]-------------
              ULoginForm(),
        
              // ----------------[Divider]-------------
              SizedBox(height: USizes.spaceBtwSections),
              ULoginDivider(),
              // ----------------[Footer]-------------
              SizedBox(height: USizes.spaceBtwSections),
              // Social Media Sign In Buttons
              Uloginsocial(),
            ],
          ),
        ),
      ),
    );
  }


}
