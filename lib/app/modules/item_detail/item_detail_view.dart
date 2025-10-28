import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lost_and_found/app/modules/item_detail/item_detail_controller.dart';
import 'package:lost_and_found/app/theme/app_theme.dart';

class ItemDetailView extends GetView<ItemDetailController> {
  const ItemDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(controller.report.value.itemName)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar
            CachedNetworkImage(
              imageUrl: controller.report.value.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            // Detail
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.report.value.itemName,
                    style: Get.textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 16),
                  _buildDetailRow(
                    Icons.category_outlined,
                    "Kategori",
                    controller.report.value.category,
                  ),
                  _buildDetailRow(
                    Icons.location_on_outlined,
                    controller.report.value.reportType == 'hilang'
                        ? "Lokasi Terakhir"
                        : "Lokasi Ditemukan",
                    controller.report.value.location,
                  ),
                  _buildDetailRow(
                    Icons.calendar_today_outlined,
                    controller.report.value.reportType == 'hilang'
                        ? "Tanggal Hilang"
                        : "Tanggal Ditemukan",
                    DateFormat(
                      'd MMMM yyyy, HH:mm',
                    ).format(controller.report.value.date),
                  ),
                  const Divider(height: 32),
                  Text("Deskripsi", style: Get.textTheme.titleMedium),
                  const SizedBox(height: 8),
                  Text(
                    controller.report.value.description,
                    style: Get.textTheme.bodyLarge?.copyWith(height: 1.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Tombol Aksi mengambang di bawah
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        // Obx untuk menampilkan tombol berdasarkan kondisi
        child: Obx(() => controller.buildActionButton()),
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppTheme.primaryColor, size: 20),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Get.textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: Get.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
