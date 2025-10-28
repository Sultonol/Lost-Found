import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lost_and_found/app/modules/profile/profile_controller.dart';
import 'package:lost_and_found/app/routes/app_pages.dart';
import 'package:lost_and_found/app/theme/app_theme.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Saya')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          children: [
            // Info User
            const CircleAvatar(
              radius: 50,
              backgroundColor: AppTheme.accentColor,
              child: Icon(Icons.person_rounded, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 16),
            Obx(
              () => Text(
                controller.userName.value,
                style: Get.textTheme.headlineSmall,
              ),
            ),
            Obx(
              () => Text(
                controller.userEmail.value,
                style: Get.textTheme.bodyLarge?.copyWith(
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(height: 32),

            // Menu
            _buildProfileMenu(
              Icons.list_alt_rounded,
              "Laporan Saya",
              () => Get.toNamed(Routes.MY_REPORTS),
            ),
            _buildProfileMenu(
              Icons.playlist_add_check_circle_outlined,
              "Proses Klaim Saya",
              () => Get.toNamed(Routes.MY_CLAIMS),
            ),
            _buildProfileMenu(Icons.settings_outlined, "Pengaturan Akun", () {
              /* TODO */
            }),
            const Divider(height: 32, indent: 20, endIndent: 20),

            // Logout
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.logout(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade50,
                    foregroundColor: Colors.red.shade700,
                    elevation: 0,
                  ),
                  child: const Text("Logout"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileMenu(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: AppTheme.primaryColor),
      title: Text(
        title,
        style: Get.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(Icons.chevron_right_rounded),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
    );
  }
}
