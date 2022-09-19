import 'package:get/get.dart';

import 'forgetpassword_logic.dart';

class ForgetpasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetpasswordLogic());
  }
}
