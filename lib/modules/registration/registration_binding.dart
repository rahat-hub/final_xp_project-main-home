import 'package:get/get.dart';

import 'registration_logic.dart';

class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationLogic());
  }
}
