import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lost_and_found/app/modules/home/home_controller.dart';
import 'package:lost_and_found/app/modules/home/widgets/report_item_card.dart';

class HilangTabView extends GetView<HomeController> {
  const HilangTabView({super.key});

  @override
  Widget build(BuildContext context) {
    // Gunakan Obx untuk mendengarkan perubahan pada lostItems
    return Obx(() {
      if (controller.lostItems.isEmpty) {
        return const Center(child: Text("Belum ada laporan barang hilang."));
      }
      return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: controller.lostItems.length,
        itemBuilder: (context, index) {
          final report = controller.lostItems[index];
          return ReportItemCard(report: report);
        },
      );
    });
  }
}
