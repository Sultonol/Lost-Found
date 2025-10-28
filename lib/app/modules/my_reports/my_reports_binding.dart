import 'package:get/get.dart';
import 'package:lost_and_found/app/modules/my_reports/my_reports_controller.dart';

class MyReportsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyReportsController>(() => MyReportsController());
  }
}
