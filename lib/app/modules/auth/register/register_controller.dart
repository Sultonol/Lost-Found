import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  late TextEditingController nameC, emailC, passwordC, confirmPasswordC;

  @override
  void onInit() {
    super.onInit();
    nameC = TextEditingController();
    emailC = TextEditingController();
    passwordC = TextEditingController();
    confirmPasswordC = TextEditingController();
  }

  @override
  void onClose() {
    nameC.dispose();
    emailC.dispose();
    passwordC.dispose();
    confirmPasswordC.dispose();
    super.onClose();
  }

  void register() {
    // TODO: Tambahkan validasi & API call
    if (passwordC.text != confirmPasswordC.text) {
      Get.snackbar(
        "Error",
        "Password dan Konfirmasi Password tidak cocok",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    if (nameC.text.isNotEmpty &&
        emailC.text.isNotEmpty &&
        passwordC.text.isNotEmpty) {
      // Simulasi sukses
      print("Registering...");
      Get.snackbar(
        "Berhasil",
        "Registrasi sukses. Silakan cek email untuk verifikasi.",
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      Get.back(); // Kembali ke halaman login
    } else {
      Get.snackbar(
        "Error",
        "Semua field wajib diisi",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
