import 'package:get/get.dart';
import 'package:lost_and_found/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    // TODO: Ganti logika ini dengan pemeriksaan token asli
    // (misal: 'GetStorage().read('token') != null')

    await Future.delayed(const Duration(seconds: 2)); // Simulasi loading

    bool isLoggedIn = false; // Ganti ini dengan logika cek token Anda

    if (isLoggedIn) {
      Get.offAllNamed(Routes.HOME); // Langsung ke Home
    } else {
      Get.offAllNamed(Routes.LOGIN); // Arahkan ke Login
    }
  }
}
