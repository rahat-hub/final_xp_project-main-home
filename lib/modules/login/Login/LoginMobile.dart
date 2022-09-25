import 'package:final_xp_project/modules/login/login_logic.dart';
import 'package:final_xp_project/routes/app-routes.dart';
import 'package:final_xp_project/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/textbuttons.dart';

class LoginPageMobilePortrait extends GetView<LoginLogic> {
  final SizingInformation? sizingInformation;

  const LoginPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Scaffold(
      backgroundColor: Color(0xff5E4949),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 170,
            ),
            SvgPicture.asset(
              'assets/images/messxp.svg',
              height: MediaQuery.of(context).size.height * .10,
            ),
            const SizedBox(
              height: 70,
            ),
            FormBuilder(
              key: controller.formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child: TextFieldProject.formField(
                        key:  controller.emailFieldKey,
                        label: "Email",
                        name: 'email',
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
                        vertical: 10.0, horizontal: 10.0),
                    child: TextFieldProject.formField(
                      key: controller.passFieldKey,
                        label: 'Password',
                        name: 'password',
                        obscureText: true,
                        inputText: TextInputType.visiblePassword,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: "Enter Password"),
                          FormBuilderValidators.minLength(
                              6,errorText: "Password Must be 6 cha ")
                        ])),
                  ),
                ],
              ),
            ), //TextFieldEmail
            //TextFieldPassword
            //ForgetPasswordTextButtons
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Obx(
                    () => Checkbox(
                        checkColor: const Color(0xffF2C94C),
                        activeColor: const Color(0xffF2C94C),
                        shape: const CircleBorder(
                            side: BorderSide(color: Color(0xffF2C94C))),
                        value: controller.checkBool1.value,
                        onChanged: (value) {
                          controller.checkBool1.value =
                              !controller.checkBool1.value;
                          if (controller.checkBool2 != false.obs) {
                            controller.checkBool1.value =
                                !controller.checkBool1.value;
                          }
                        }),
                  ),
                  SvgPicture.asset('assets/icon/chess_king_icon.svg'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Manager",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Obx(
                    () => Checkbox(
                        autofocus: true,
                        focusColor: Colors.amberAccent,
                        checkColor: const Color(0xffF2C94C),
                        activeColor: const Color(0xffF2C94C),
                        shape: const CircleBorder(
                          side: BorderSide(color: Color(0xffF2C94C)),
                        ),
                        value: controller.checkBool2.value,
                        onChanged: (value) {
                          controller.checkBool2.value =
                              !controller.checkBool2.value;
                          if (controller.checkBool1 != false.obs) {
                            controller.checkBool2.value =
                                !controller.checkBool2.value;
                          }
                        }),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset('assets/icon/solid_user_icon.svg'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Member",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            //Member_Manager_selection
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Buttons.buttons(
                  text: "Login", onPressed: (){
                if(controller.formKey.currentState!.validate()){
                  controller.formKey.currentState!.save();
                  Get.toNamed(AppPages.DASHBOARD);
                }
              }),
            ), //LoginButtons
            Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                child: Align(
                  child: TextButtons.textButtons(
                      text: 'forget password',
                      alignment: TextAlign.end,
                      onPressed: () {
                        Get.toNamed(AppPages.FORGETPASSWORD);
                      }),
                  alignment: Alignment.centerRight,
                )),
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
                        "Don't have an account?",
                        //textAlign:  TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  TextButtons.textButtons(
                      text: "Register Now",
                      alignment: TextAlign.center,
                    onPressed: (){
                      Get.toNamed(AppPages.REGISTRATION);
                    }
                  ),
                ],
              ),
            ), //RegistrationTextButtons
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset('assets/icon/i_button.svg',
                    height: MediaQuery.of(context).size.height * .03,
                    alignment: Alignment.bottomRight),
              ),
            ), //BottomSVGicon
          ],
        ),
      ),
    );
  }
}

class LoginPageMobileLandscape extends GetView<LoginLogic> {
  final SizingInformation? sizingInformation;

  const LoginPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Scaffold(
      backgroundColor: Color(0xff5E4949),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 170,
            ),
            SvgPicture.asset(
              'assets/images/messxp.svg',
              height: MediaQuery.of(context).size.height * .10,
            ),
            const SizedBox(
              height: 70,
            ),
            FormBuilder(
              key: controller.formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child: TextFieldProject.formField(
                        key:  controller.emailFieldKey,
                        label: "Email",
                        name: 'email',
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
                        vertical: 10.0, horizontal: 10.0),
                    child: TextFieldProject.formField(
                        key: controller.passFieldKey,
                        label: 'Password',
                        name: 'password',
                        obscureText: true,
                        inputText: TextInputType.visiblePassword,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: "Enter Password"),
                          FormBuilderValidators.maxLength(
                              6,errorText: "Password Must be 6 cha ")
                        ])),
                  ),
                ],
              ),
            ), //TextFieldEmail

            //TextFieldPassword
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Buttons.buttons(
                  text: "Login", onPressed: (){
                if(controller.formKey.currentState!.validate()){
                  controller.formKey.currentState!.save();
                  Get.toNamed(AppPages.DASHBOARD);
                }
              }),
            ), //LoginButtons
            Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                child: Align(
                  child: TextButtons.textButtons(
                      text: 'forget password',
                      alignment: TextAlign.end,
                      onPressed: () {
                        Get.toNamed(AppPages.FORGETPASSWORD);
                      }),
                  alignment: Alignment.centerRight,
                )), //ForgetPasswordTextButtons
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Obx(
                        () => Checkbox(
                        checkColor: const Color(0xffF2C94C),
                        activeColor: const Color(0xffF2C94C),
                        shape: const CircleBorder(
                            side: BorderSide(color: Color(0xffF2C94C))),
                        value: controller.checkBool1.value,
                        onChanged: (value) {
                          controller.checkBool1.value =
                          !controller.checkBool1.value;
                          if (controller.checkBool2 != false.obs) {
                            controller.checkBool1.value =
                            !controller.checkBool1.value;
                          }
                        }),
                  ),
                  SvgPicture.asset('assets/icon/chess_king_icon.svg'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Manager",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Obx(
                        () => Checkbox(
                        autofocus: true,
                        focusColor: Colors.amberAccent,
                        checkColor: const Color(0xffF2C94C),
                        activeColor: const Color(0xffF2C94C),
                        shape: const CircleBorder(
                          side: BorderSide(color: Color(0xffF2C94C)),
                        ),
                        value: controller.checkBool2.value,
                        onChanged: (value) {
                          controller.checkBool2.value =
                          !controller.checkBool2.value;
                          if (controller.checkBool1 != false.obs) {
                            controller.checkBool2.value =
                            !controller.checkBool2.value;
                          }
                        }),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset('assets/icon/solid_user_icon.svg'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Member",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ), //Member_Manager_selection
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
                        "Don't have an account?",
                        //textAlign:  TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  TextButtons.textButtons(
                      text: "Register Now",
                      alignment: TextAlign.center,
                      onPressed: (){
                        Get.toNamed(AppPages.REGISTRATION);
                      }
                  ),
                ],
              ),
            ), //RegistrationTextButtons
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset('assets/icon/i_button.svg',
                    height: MediaQuery.of(context).size.height * .03,
                    alignment: Alignment.bottomRight),
              ),
            ), //BottomSVGicon
          ],
        ),
      ),
    );
  }
}
