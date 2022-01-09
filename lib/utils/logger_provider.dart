import 'package:logger/logger.dart';

mixin LoggerProvider {
  final logger = Logger(
      printer: PrettyPrinter(
          stackTraceBeginIndex: 4, methodCount: 2, printTime: true));

  /// 동작 여부를 최대한 자세히 살펴볼 목적으로 남기는 로그
  void logv(String message) {
    logger.v(message);
  }

  /// 디버깅의 목적으로 문제 발생 가능성이 있는 곳에 남기는 로그
  void logd(String message) {
    logger.d(message);
  }

  /// 어떤 처리를 하면서 발생하는 진행 과정 등을 모니터링하기 위한 목적으로 남기는 로그
  void logi(String message) {
    logger.i(message);
  }

  /// 심각하지는 않지만 나중에라도 꼭 살펴보아야 할 문제가 발생 했을때 남기는 로그
  void logw(String message) {
    logger.w(message);
  }

  /// 가장 심각한 문제가 발생했을때 남기는 로그
  void loge(String message) {
    logger.e(message);
  }

  // What the fuck?
  void logwtf(String message) {
    logger.wtf(message);
  }
}
