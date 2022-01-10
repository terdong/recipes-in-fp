import 'package:desktop_window/desktop_window.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_in_getx/routes/app_pages.dart';

void main() {
  runApp(DevicePreview(
    // enabled: true,
    defaultDevice: Devices.android.samsungGalaxyS20,
    builder: (context) => const MyApp(), // Wrap your app
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future _getWindowSize() async {
    Size size = await DesktopWindow.getWindowSize();
    print("size: $size");
    await DesktopWindow.setWindowSize(const Size(500, 1000));
    await DesktopWindow.setMinWindowSize(const Size(1000, 1000));
    await DesktopWindow.setMaxWindowSize(Size.infinite);
  }

  @override
  Widget build(BuildContext context) {
    _getWindowSize();
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
}
