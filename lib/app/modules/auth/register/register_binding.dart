import 'package:get/get.dart';
import 'package:lost_and_found/app/modules/auth/register/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}
