import 'package:get/get.dart';
import 'package:recipes_in_getx/modules/root/bindings/root_binding.dart';
import 'package:recipes_in_getx/modules/root/views/root_view.dart';
import 'package:recipes_in_getx/views/recipe_detail/recipe_detail.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.root,
      binding: RootBinding(),
      page: () => RootView(),
      /* children: [
          GetPage(
              name: Routes.home, binding: HomeBinding(), page: () => HomeView())
        ] */
    ),
    GetPage(name: Routes.detail, page: () => RecipeDetail()),

/*     GetPage(
        name: '/',
        page: () => const RootView(),
        binding: RootBinding(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        children: [
          GetPage(
              title: null,
              name: Routes.home,
              binding: HomeBinding(),
              page: () => HomeView()),
        ]) */
  ];
}
