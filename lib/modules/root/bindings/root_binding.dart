import 'package:get/get.dart';
import 'package:recipes_in_fp/modules/root/controllers/root_controller.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootController>(
        () => RootController(/* RootRepository(MyApi()) */));
  }
}
