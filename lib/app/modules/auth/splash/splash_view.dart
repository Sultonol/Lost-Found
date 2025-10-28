import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lost_and_found/app/modules/auth/splash/splash_controller.dart';
// Impor AppTheme secara manual jika diperlukan (meskipun Get.textTheme seharusnya cukup)
import 'package:lost_and_found/app/theme/app_theme.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller akan otomatis dipanggil 'onReady'
    // untuk menjalankan logikanya
    controller.onReady();

    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ganti dengan logo Anda
            Icon(Icons.search_rounded, size: 100, color: AppTheme.primaryColor),
            SizedBox(height: 24),
            Text(
              "Lost & Found Kampus",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
