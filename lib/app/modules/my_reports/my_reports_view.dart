import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lost_and_found/app/modules/home/widgets/report_item_card.dart';
import 'package:lost_and_found/app/modules/my_reports/my_reports_controller.dart';

class MyReportsView extends GetView<MyReportsController> {
  const MyReportsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Laporan Saya')),
      body: Obx(() {
        if (controller.myReports.isEmpty) {
          return const Center(
            child: Text("Anda belum pernah membuat laporan."),
          );
        }
        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: controller.myReports.length,
          itemBuilder: (context, index) {
            final report = controller.myReports[index];
            // Kita gunakan ulang widget card dari Home
            return ReportItemCard(report: report);
          },
        );
      }),
    );
  }
}
