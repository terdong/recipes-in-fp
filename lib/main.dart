import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:recipes_in_fp/routes/app_pages.dart';

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
Future<void> main() async {
  var logger = Logger();
  // WidgetsFlutterBinding.ensureInitialized();

  // if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
  //   Size size = await DesktopWindow.getWindowSize();
  //   logger.d("size: $size");
  //   await DesktopWindow.setWindowSize(const Size(500, 500));
  //   await DesktopWindow.setMinWindowSize(const Size(700, 500));
  //   await DesktopWindow.setMaxWindowSize(Size.infinite);
  //   // setWindowTitle('Todos');
  //   // setWindowMinSize(const Size(700, 500));
  //   // setWindowMaxSize(Size.infinite);
  // }

  // logger.v("Verbose log");

  logger.d("Debug log");

  // logger.i("Info log");

  // logger.w("Warning log");

  // logger.e("Error log");

  // logger.wtf("What a terrible failure log");

  runApp(DevicePreview(
    // enabled: true,
    defaultDevice: Devices.android.samsungGalaxyS20,
    builder: (context) => const MyApp(), // Wrap your app
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      // scrollBehavior: CustomScrollBehavior(),
      scrollBehavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),
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