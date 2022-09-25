import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class RegistrationLogic extends GetxController {

  var formKey = GlobalKey<FormBuilderState>();
  var nameFieldKey = GlobalKey<FormBuilderState>();
  var emailFieldKey = GlobalKey<FormBuilderFieldState>();
  var phoneFieldKey = GlobalKey<FormBuilderState>();
  var pass1FieldKey = GlobalKey<FormBuilderFieldState>();
  var pass2FieldKey = GlobalKey<FormBuilderFieldState>();


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
