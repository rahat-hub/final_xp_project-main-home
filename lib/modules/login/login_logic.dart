import 'package:final_xp_project/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class LoginLogic extends GetxController {

  late PageController chackBoxController;
  var formKey = GlobalKey<FormBuilderState>();

  var emailField = GlobalKey<FormBuilderFieldState>();

  var passwordField = GlobalKey<FormBuilderFieldState>();
  var checkBool1 = false.obs;
  var checkBool2 = false.obs;
  //static var isLoadingLoggingIn = false.obs;

  late PageController pageController;

/*  final GlobalKey<FormState>loginFormKey = GlobalKey<FormState>();

  late TextEditingController emailController, passwordController;

  var email = '';
  var password = '';*/

  @override
  void onInit(){
    super.onInit();
    chackBoxController = PageController(initialPage : 0, keepPage: true);
    chackBoxController.addListener(() {

    });
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
  /*void singIn(){
    if(isLoadingLoggingIn.value != true){
      Get.offNamed(AppPages.DASHBOARD);
    }
    else{
      isLoadingLoggingIn.value = false;
    }
  }*/
}


