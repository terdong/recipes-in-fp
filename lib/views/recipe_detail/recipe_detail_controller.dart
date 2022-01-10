import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:recipes_in_getx/utils/logger_provider.dart';

class RecipeDetailController extends GetxController with LoggerProvider {
  @override
  void onInit() {
    super.onInit();
    ever(_sliderVal, (_) {
      logv('_sliderVal이 $_로 변경되었습니다.');
      debugPrint('_sliderVal이 $_로 변경되었습니다.');
    });
  }

  final _sliderVal = 1.obs;
  set sliderVal(value) => _sliderVal.value = value;
  get sliderVal => _sliderVal.value;
}
