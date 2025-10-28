import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lost_and_found/app/modules/home/home_controller.dart';
import 'package:lost_and_found/app/modules/home/widgets/report_item_card.dart';

class DitemukanTabView extends GetView<HomeController> {
  const DitemukanTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.foundItems.isEmpty) {
        return const Center(child: Text("Belum ada laporan barang ditemukan."));
      }
      return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: controller.foundItems.length,
        itemBuilder: (context, index) {
          final report = controller.foundItems[index];
          return ReportItemCard(report: report);
        },
      );
    });
  }
}
