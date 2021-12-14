import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class RecipeDetailController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    ever(_sliderVal, (_) {
      debugPrint('_sliderVal이 $_로 변경되었습니다.');
    });
  }

  final _sliderVal = 1.obs;
  set sliderVal(value) => _sliderVal.value = value;
  get sliderVal => _sliderVal.value;
}
