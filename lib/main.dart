import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/Modules/Screens/To-Do%20Screen/Views/todo_scren.dart';
import 'Modules/Screens/Home_Screen/Views/home_screen.dart';
import 'Modules/Screens/Splash_Screen/Views/splash_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.yellow),
      getPages: [
        GetPage(name: "/", page: () => SplashScreen()),
        GetPage(name: "/home", page: () => HomeScreen()),
        GetPage(name: "/todo", page: () => ToDo_Screen()),
      ],
    ),
  );
}
