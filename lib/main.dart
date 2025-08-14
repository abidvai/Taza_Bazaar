import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'my_app.dart';

void main() async{

  /// widgets Flutter Binding
  final widgetBinding = WidgetsFlutterBinding.ensureInitialized();

  /// Flutter Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetBinding);

  await Future.delayed(Duration(seconds: 2));
  FlutterNativeSplash.remove();

  /// Portrait up the device
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}



