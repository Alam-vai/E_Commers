import 'package:flutter/material.dart';


import 'my_app.dart';

void main() {

  /// Widgets Flutter Binding
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  /// Flutter Native Splash
 // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(MyApp());
}


