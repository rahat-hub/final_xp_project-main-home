import 'package:get/get.dart';

import 'india_logic.dart';

class IndiaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IndiaLogic());
  }
}
