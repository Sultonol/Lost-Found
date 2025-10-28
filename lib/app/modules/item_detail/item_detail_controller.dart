import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lost_and_found/app/data/models/report_model.dart';
import 'package:lost_and_found/app/theme/app_theme.dart';
import 'package:lost_and_found/app/routes/app_pages.dart';

class ItemDetailController extends GetxController {
  // Ambil data laporan dari argumen halaman
  final Rx<Report> report = (Get.arguments as Report).obs;

  // Mock ID pengguna yang sedang login
  // TODO: Ganti ini dengan ID pengguna asli dari GetStorage/Auth Service
  final String myUserId = "user-abc";

  @override
  void onInit() {
    super.onInit();
    print("Membuka detail untuk item ID: ${report.value.id}");
    print("User ID Laporan: ${report.value.userId}");
    print("My User ID: $myUserId");
  }

  // Logika untuk menampilkan tombol aksi
  Widget buildActionButton() {
    // Kondisi A: Ini Laporan Saya
    if (report.value.userId == myUserId) {
      return Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                /* TODO: Logika Edit */
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: AppTheme.primaryColor,
                side: const BorderSide(color: AppTheme.primaryColor),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text("Edit"),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                /* TODO: Logika Hapus */
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text("Hapus"),
            ),
          ),
        ],
      );
    }

    // Kondisi C: Laporan "Ditemukan" Milik Org Lain
    // (dan statusnya masih 'open')
    if (report.value.reportType == 'ditemukan' &&
        report.value.status == 'open') {
      return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => createClaim(),
          child: const Text("KLAIM BARANG INI"),
        ),
      );
    }

    // Kondisi B (Laporan "Hilang") atau lainnya: Tidak ada tombol
    return const SizedBox.shrink();
  }

  void createClaim() {
    // TODO: Tampilkan dialog konfirmasi
    Get.defaultDialog(
      title: "Konfirmasi Klaim",
      middleText: "Anda yakin ingin mengklaim barang ini?",
      textConfirm: "Ya, Klaim",
      textCancel: "Batal",
      confirmTextColor: Colors.white,
      onConfirm: () {
        // TODO: Panggil API untuk membuat klaim
        print("Membuat klaim untuk item ID: ${report.value.id}");

        // Tutup dialog
        Get.back();

        // Tampilkan pesan sukses
        Get.snackbar(
          "Berhasil",
          "Klaim berhasil dibuat. Anda dapat melihat progresnya di halaman Profil.",
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );

        // Arahkan ke halaman MyClaims
        Get.toNamed(Routes.MY_CLAIMS);

        // Update status item secara lokal (atau fetch ulang)
        // Ini akan membuat tombol "KLAIM" hilang
        report.update((val) {
          // val.status = 'claimed'; // Seharusnya ini didapat dari API
        });
      },
    );
  }
}
