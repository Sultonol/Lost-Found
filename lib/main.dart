import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'app/theme/app_theme.dart';

void main() {
  // Pastikan Anda menginisialisasi GetStorage jika Anda menggunakannya
  // await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Lost & Found Kampus",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.darkTheme, // Jika Anda ingin mendukung mode gelap
      // themeMode: ThemeMode.system,
      initialRoute: AppPages.INITIAL, // Rute awal (kita akan atur ke splash)
      getPages: AppPages.routes, // Daftar semua halaman
    );
  }
}
