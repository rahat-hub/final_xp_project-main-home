import 'package:final_xp_project/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class LoginLogic extends GetxController {

  var formKey = GlobalKey<FormBuilderState>();
  var emailFieldKey = GlobalKey<FormBuilderFieldState>();
  var passFieldKey = GlobalKey<FormBuilderFieldState>();

  var checkBool1 = false.obs;
  var checkBool2 = false.obs;
  //static var isLoadingLoggingIn = false.obs;

  late PageController pageController;
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
}


