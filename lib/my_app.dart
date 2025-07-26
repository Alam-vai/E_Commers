import 'package:flutter/material.dart';
import 'package:socialclone/utils/theme/theme.dart';

import 'feature/authentication/screens/onboarding/onboarding.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: UAppTheme.lightTheme,
      darkTheme: UAppTheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}
