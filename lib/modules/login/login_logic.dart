import 'package:final_xp_project/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginLogic extends GetxController {

  var checkBool1 = false.obs;
  var checkBool2 = false.obs;

  static var isLoadingLoggingIn = false.obs;

/*  final GlobalKey<FormState>loginFormKey = GlobalKey<FormState>();

  late TextEditingController emailController, passwordController;

  var email = '';
  var password = '';*/

  @override
  void onInit(){
    super.onInit();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
  void singIn(){
    if(isLoadingLoggingIn.value != true){
      Get.offNamed(AppPages.DASHBOARD);
    }
    else{
      isLoadingLoggingIn.value = false;
    }
  }
}


