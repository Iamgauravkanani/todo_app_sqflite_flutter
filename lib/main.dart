import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Modules/Screens/Home_Screen/Views/home_screen.dart';
import 'Modules/Screens/Splash_Screen/Views/splash_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      getPages: [
        GetPage(name: "/", page: () => HomeScreen()),
        GetPage(name: "/home", page: () => HomeScreen()),
      ],
    ),
  );
}
