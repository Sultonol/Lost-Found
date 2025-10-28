import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lost_and_found/app/routes/app_pages.dart';

class LoginController extends GetxController {
  late TextEditingController emailC;
  late TextEditingController passwordC;

  @override
  void onInit() {
    super.onInit();
    emailC = TextEditingController();
    passwordC = TextEditingController();
  }

  @override
  void onClose() {
    emailC.dispose();
    passwordC.dispose();
    super.onClose();
  }

  void login() {
    // TODO: Tambahkan logika validasi & API call di sini
    if (true) {
      // Tampilkan loading
      // ...

      // Simulasi sukses login
      print("Logging in...");
      Get.offAllNamed(Routes.HOME); // Arahkan ke Home
    } else {
      Get.snackbar(
        "Error",
        "Email dan password tidak boleh kosong",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
