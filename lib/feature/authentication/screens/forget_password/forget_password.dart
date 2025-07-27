
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';
import 'package:socialclone/comon/styles/padding.dart';
import 'package:socialclone/comon/widgets/button/elevated_button.dart';
import 'package:socialclone/feature/authentication/screens/forget_password/reset_password.dart';
import 'package:socialclone/utils/constants/sizes.dart';
import 'package:socialclone/utils/constants/texts.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //-----------Header-----
              //title
              Text(
                UTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: USizes.spaceBtwItems / 2),
              //subTitle
              Text(
                UTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: USizes.spaceBtwSections * 2),
              //---------Form-----------
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: UTexts.email,
                      prefixIcon: Icon(Iconsax.direct_right),
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwSections),
                  UElevatedButton(
                    onPressed: () => Get.to(() => ResetPasswordScreen()),
                    child: Text(UTexts.submit),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
