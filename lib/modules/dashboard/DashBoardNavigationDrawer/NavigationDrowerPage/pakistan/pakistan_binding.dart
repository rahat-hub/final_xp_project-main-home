import 'package:get/get.dart';

import 'pakistan_logic.dart';

class PakistanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PakistanLogic());
  }
}
