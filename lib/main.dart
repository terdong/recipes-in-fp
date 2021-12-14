import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_in_fp/views/home.dart';

void main() {
  //Get.changeTheme(ThemeData.light());
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: true,
    //initialRoute: Routes.SPLASH,
    //theme: ThemeData.light(),
    defaultTransition: Transition.fade,
    //initialBinding: SplashBinding(),
    //getPages: AppPages.pages,
    home: HomePage(),
  ));
}
