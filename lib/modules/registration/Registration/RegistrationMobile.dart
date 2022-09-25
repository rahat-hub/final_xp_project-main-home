import 'package:final_xp_project/modules/registration/registration_logic.dart';
import 'package:final_xp_project/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../routes/app_pages.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/textbuttons.dart';

class RegisterPageMobilePortrait extends GetView<RegistrationLogic> {
  final SizingInformation? sizingInformation;

  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  RegisterPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<RegistrationLogic>();
    return Scaffold(
      backgroundColor: const Color(0xff5E4949),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            SvgPicture.asset(
              'assets/images/messxp.svg',
              height: MediaQuery.of(context).size.height * .10,
            ),
            const SizedBox(
              height: 50,
            ),
            FormBuilder(
              key: controller.formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 5.0),
                    child: TextFieldProject.formField(
                        key: controller.nameFieldKey,
                        name: 'name',
                        label: 'Enter your name',
                        obscureText: false,
                        inputText: TextInputType.name,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: "Enter your name"),
                          FormBuilderValidators.minLength(4,
                              errorText: "Name is too Short!")
                        ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10.0),
                    child: TextFieldProject.formField(
                        key: controller.emailFieldKey,
                        name: 'email',
                        label: 'Enter email',
                        obscureText: false,
                        inputText: TextInputType.emailAddress,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: "Enter email"),
                          FormBuilderValidators.email(
                              errorText: "Please enter valid email")
                        ])),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10.0),
                      child: TextFieldProject.formField(
                          key: controller.phoneFieldKey,
                          name: 'phone',
                          label: 'Enter Phone Number',
                          obscureText: false,
                          inputText: TextInputType.phone,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                                errorText: "Enter phone number"),
                            FormBuilderValidators.numeric(
                                errorText: "Type number"),
                            FormBuilderValidators.minLength(11,
                                errorText: "Phone number is not valid"),
                            FormBuilderValidators.maxLength(11,
                                errorText: "Phone number is not valid"),
                          ]))),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10.0),
                    child: TextFieldProject.formField(
                      key: controller.pass1FieldKey,
                      name: 'password',
                      label: 'Enter Password',
                      obscureText: true,
                      inputText: TextInputType.visiblePassword,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: "Enter Password"),
                        FormBuilderValidators.minLength(6,
                            errorText: "must be 6 character")
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10.0),
                    child: TextFieldProject.formField(
                      key: controller.pass2FieldKey,
                      name: 'password',
                      label: 'Enter Password',
                      obscureText: true,
                      inputText: TextInputType.visiblePassword,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: "Enter Password"),
                        FormBuilderValidators.minLength(6,
                            errorText: "must be 6 character")
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              child: Buttons.buttons(
                  text: "Register",
                  onPressed: () {
                    if (controller.formKey.currentState!.validate()) {
                      controller.formKey.currentState!.save();
                      Get.snackbar(
                        'Snack bar',
                        'Success fully Registered',
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.yellowAccent,
                        margin: EdgeInsets.all(20),
                        icon: const Icon(
                          Icons.thumb_up,
                          color: Colors.green,
                        ),
                        shouldIconPulse: false,
                      );
                      Get.toNamed(AppPages.LOGIN);
                    }
                  }),
            ),
            Center(
              child: Row(
                children: [
                  const SizedBox(
                    width: 60,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Center(
                      child: Text(
                        "Already have an account !",
                        //textAlign:  TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  TextButtons.textButtons(
                      text: "Login Now",
                      onPressed: () {
                        Get.toNamed(AppPages.LOGIN);
                      }),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: SvgPicture.asset(
                  'assets/icon/i_button.svg',
                  height: MediaQuery.of(context).size.height * .03,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterPageMobileLandscape extends GetView<RegistrationLogic> {
  final SizingInformation? sizingInformation;

  const RegisterPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<RegistrationLogic>();
    return Scaffold(
      backgroundColor: const Color(0xff5E4949),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            SvgPicture.asset(
              'assets/images/messxp.svg',
              height: MediaQuery.of(context).size.height * .10,
            ),
            const SizedBox(
              height: 50,
            ),
            FormBuilder(
              key: controller.formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 5.0),
                    child: TextFieldProject.formField(
                        key: controller.nameFieldKey,
                        name: 'name',
                        label: 'Enter your name',
                        obscureText: false,
                        inputText: TextInputType.name,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: "Enter your name"),
                          FormBuilderValidators.minLength(4,
                              errorText: "Name is too Short!")
                        ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10.0),
                    child: TextFieldProject.formField(
                        key: controller.emailFieldKey,
                        name: 'email',
                        label: 'Enter email',
                        obscureText: false,
                        inputText: TextInputType.emailAddress,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: "Enter email"),
                          FormBuilderValidators.email(
                              errorText: "Please enter valid email")
                        ])),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10.0),
                      child: TextFieldProject.formField(
                          key: controller.phoneFieldKey,
                          name: 'phone',
                          label: 'Enter Phone Number',
                          obscureText: false,
                          inputText: TextInputType.phone,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                                errorText: "Enter phone number"),
                            FormBuilderValidators.numeric(
                                errorText: "Type number"),
                            FormBuilderValidators.minLength(11,
                                errorText: "Phone number is not valid"),
                            FormBuilderValidators.maxLength(11,
                                errorText: "Phone number is not valid"),
                          ]))),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10.0),
                    child: TextFieldProject.formField(
                      key: controller.pass1FieldKey,
                      name: 'password',
                      label: 'Enter Password',
                      obscureText: true,
                      inputText: TextInputType.visiblePassword,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: "Enter Password"),
                        FormBuilderValidators.minLength(6,
                            errorText: "must be 6 character")
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10.0),
                    child: TextFieldProject.formField(
                      key: controller.pass2FieldKey,
                      name: 'password',
                      label: 'Enter Password',
                      obscureText: true,
                      inputText: TextInputType.visiblePassword,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: "Enter Password"),
                        FormBuilderValidators.minLength(6,
                            errorText: "must be 6 character")
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              child: Buttons.buttons(
                  text: "Register",
                  onPressed: () {
                    if (controller.formKey.currentState!.validate()) {
                      controller.formKey.currentState!.save();
                      Get.snackbar(
                        'Snack bar',
                        'Success fully Registered',
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.yellowAccent,
                        margin: EdgeInsets.all(20),
                        icon: const Icon(
                          Icons.thumb_up,
                          color: Colors.green,
                        ),
                        shouldIconPulse: false,
                      );
                      Get.toNamed(AppPages.LOGIN);
                    }
                  }),
            ),
            Center(
              child: Row(
                children: [
                  const SizedBox(
                    width: 60,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Center(
                      child: Text(
                        "Already have an account !",
                        //textAlign:  TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  TextButtons.textButtons(
                      text: "Login Now",
                      onPressed: () {
                        Get.toNamed(AppPages.LOGIN);
                      }),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: SvgPicture.asset(
                  'assets/icon/i_button.svg',
                  height: MediaQuery.of(context).size.height * .03,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
