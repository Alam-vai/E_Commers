import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:socialclone/comon/styles/padding.dart';
import 'package:socialclone/comon/widgets/button/elevated_button.dart';
import 'package:socialclone/utils/constants/colors.dart';
import 'package:socialclone/utils/constants/texts.dart';

import '../../../../comon/widgets/button/social_buttons.dart';
import '../../../../comon/widgets/login_signup/form_divider.dart';
import '../../../../utils/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              //-----------------[Header]-----------------//

              // title
              Text(
                UTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 20),
              //-----------------[Form]-----------------//
              Column(
                children: [
                  // first name and last name
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: UTexts.firstName,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Iconsax.user),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: UTexts.lastName,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Iconsax.user),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Email
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: UTexts.email,

                      prefixIcon: Icon(Iconsax.message),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: UTexts.phoneNumber,

                      prefixIcon: Icon(Iconsax.direct),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: UTexts.password,

                      prefixIcon: Icon(Iconsax.message),
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),

                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(text: '${UTexts.iAgreeTo} '),
                            TextSpan(
                              text: '${UTexts.privacyPolicy}',
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(
                                    color: UColors.primary,
                                    decoration: TextDecoration.underline,
                                    decorationColor: UColors.primary,
                                  ),
                            ),
                            TextSpan(text: ' ${UTexts.and} '),
                            TextSpan(
                              text: '${UTexts.termsOfUse}',
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(
                                    color: UColors.primary,
                                    decoration: TextDecoration.underline,
                                    decorationColor: UColors.primary,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),

              UElevatedButton(
                onPressed: () {},
                child: Text(UTexts.createAccount),
              ),

              //-----------------[Divider]-----------------//
              SizedBox(height: 20),
              ULoginDivider(),
              // ----------------[Footer]-------------
              SizedBox(height: USizes.spaceBtwSections),
              // Social Media Sign In Buttons
              Uloginsocial(),

              //-----------------[Footer]-----------------//
              Uloginsocial(),
            ],
          ),
        ),
      ),
    );
  }
}
