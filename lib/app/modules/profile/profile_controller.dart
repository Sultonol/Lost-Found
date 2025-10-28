import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lost_and_found/app/routes/app_pages.dart';

class ProfileController extends GetxController {
  // TODO: Ambil data ini dari Auth Service / GetStorage
  final RxString userName = "Budi Sudarsono".obs;
  final RxString userEmail = "budi.sudarsono@kampus.ac.id".obs;

  void logout() {
    // TODO: Tampilkan dialog konfirmasi
    Get.defaultDialog(
      title: "Konfirmasi Logout",
      middleText: "Anda yakin ingin keluar dari akun Anda?",
      textConfirm: "Ya, Logout",
      textCancel: "Batal",
      confirmTextColor: Colors.white,
      onConfirm: () {
        // TODO: Hapus token dari GetStorage
        // TODO: Panggil API logout jika ada

        print("Logging out...");

        // Arahkan ke Login
        Get.offAllNamed(Routes.LOGIN);
      },
    );
  }
}
