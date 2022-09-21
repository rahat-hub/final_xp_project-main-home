import 'package:get/get.dart';

import 'bangladesh_logic.dart';

class BangladeshBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BangladeshLogic());
  }
}
