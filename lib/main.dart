import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_in_fp/routes/app_pages.dart';
import 'package:recipes_in_fp/utils/custom_scroll_behavior.dart';

/* void main() => runApp(GetMaterialApp(
      title: "Application",
      //scrollBehavior: CustomScrollBehavior(),
      //debugShowCheckedModeBanner: true,
      //locale: DevicePreview.locale(context),
      //builder: DevicePreview.appBuilder,
      //theme: ThemeData.light(),
      defaultTransition: Transition.fade,
      //initialBinding: RootBinding(),
      //getPages: AppPages.pages,
      //initialRoute: Routes.root,
      home: RootView(),
    )); */
void main() => runApp(DevicePreview(
      // enabled: true,
      defaultDevice: Devices.android.samsungGalaxyS20,
      builder: (context) => const MyApp(), // Wrap your app
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      scrollBehavior: CustomScrollBehavior(),
      //debugShowCheckedModeBanner: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      //theme: ThemeData.light(),
      defaultTransition: Transition.fade,
      useInheritedMediaQuery: true,
      //initialBinding: RootBinding(),
      getPages: AppPages.pages,
      initialRoute: Routes.root,
      //home: RootView(),
    );
  }
/*   @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  } */
}
/*
void main() {
  //Get.changeTheme(ThemeData.light());
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: true,
    //initialRoute: Routes.SPLASH,
    //theme: ThemeData.light(),
    defaultTransition: Transition.fade,
    //initialBinding: SplashBinding(),
    //getPages: AppPages.pages,
    home: HomePage(),
  ));
}*/