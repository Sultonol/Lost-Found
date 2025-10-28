import 'package:get/get.dart';
import 'package:lost_and_found/app/modules/auth/splash/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
