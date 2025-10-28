import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lost_and_found/app/routes/app_pages.dart';
import 'package:lost_and_found/app/theme/app_theme.dart';
import 'package:lost_and_found/app/modules/auth/login/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.search_rounded,
                  size: 80,
                  color: AppTheme.primaryColor,
                ),
                const SizedBox(height: 16),
                Text(
                  "Selamat Datang Kembali",
                  textAlign: TextAlign.center,
                  style: Get.textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  "Login untuk menemukan barang Anda",
                  textAlign: TextAlign.center,
                  style: Get.textTheme.bodyMedium?.copyWith(
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  controller: controller.emailC,
                  decoration: const InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: controller.passwordC,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock_outline_rounded),
                  ),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () => controller.login(),
                  child: const Text("Login"),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Belum punya akun?"),
                    TextButton(
                      onPressed: () => Get.toNamed(Routes.REGISTER),
                      child: const Text("Daftar di sini"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
