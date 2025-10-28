import 'package:get/get.dart';
import 'package:lost_and_found/app/modules/add_report/add_report_controller.dart';

class AddReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddReportController>(() => AddReportController());
  }
}
