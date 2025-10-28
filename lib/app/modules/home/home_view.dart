import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lost_and_found/app/modules/home/home_controller.dart';
import 'package:lost_and_found/app/modules/home/widgets/hilang_tab_view.dart';
import 'package:lost_and_found/app/modules/home/widgets/ditemukan_tab_view.dart';
import 'package:lost_and_found/app/routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lost & Found'),
          actions: [
            IconButton(
              icon: const Icon(Icons.person_outline_rounded),
              onPressed: () => Get.toNamed(Routes.PROFILE),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Barang Hilang'),
              Tab(text: 'Barang Ditemukan'),
            ],
          ),
        ),
        body: const TabBarView(children: [HilangTabView(), DitemukanTabView()]),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.toNamed(Routes.ADD_REPORT),
          child: const Icon(Icons.add_rounded),
        ),
      ),
    );
  }
}
