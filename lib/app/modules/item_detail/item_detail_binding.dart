import 'package:get/get.dart';
import 'package:lost_and_found/app/modules/item_detail/item_detail_controller.dart';

class ItemDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemDetailController>(() => ItemDetailController());
  }
}
