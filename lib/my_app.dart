import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:taza_bazar/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:taza_bazar/features/shop/screen/home/home_screen.dart';
import 'package:taza_bazar/navigation_menu.dart';
import 'package:taza_bazar/utils/theme/theme.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taza Bazaar',
      theme: AAppTheme.lightTheme,
      darkTheme: AAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: HomeScreen(),
    );
  }
}
