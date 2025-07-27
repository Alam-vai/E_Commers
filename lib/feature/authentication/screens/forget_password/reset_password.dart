import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:socialclone/comon/styles/padding.dart';
import 'package:socialclone/comon/widgets/button/elevated_button.dart';
import 'package:socialclone/feature/authentication/screens/login/login.dart';
import 'package:socialclone/utils/constants/texts.dart';
import 'package:socialclone/utils/helpers/device_helpers.dart';
import 'package:socialclone/utils/images.dart';

import '../../../../utils/constants/sizes.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              //image
              Image.asset(
               UImages.mailSentImage,
                height: UDeviceHelper.getScreenHeight(context) * 0.4,
              ),
              //Title
              Text(
                UTexts.resetPasswordTitle,
                style: Theme
                    .of(context)
                    .textTheme
                    .headlineMedium,
              ),
              SizedBox(height: USizes.spaceBtwItems / 2),

              //Email
              Text("example@gmail.com", style: Theme
                  .of(context)
                  .textTheme
                  .bodyMedium,),
              SizedBox(height: USizes.spaceBtwItems / 2),
              //SubTile
              Text(
                UTexts.resetPasswordSubTitle,
                style: Theme
                    .of(context)
                    .textTheme
                    .bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwSections * 2),
              // Done
              UElevatedButton(onPressed: () {}, child: Text(UTexts.done)),

              ///Resend Email


              SizedBox(width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: Text(UTexts.resendEmail, style: Theme
                    .of(context)
                    .textTheme
                    .bodyMedium,)),)


            ],
          ),
        ),)
      ,
    );
  }
}
