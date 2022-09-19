import 'package:final_xp_project/modules/registration/registration_logic.dart';
import 'package:final_xp_project/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../routes/app_pages.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/textbuttons.dart';

class RegisterPageMobilePortrait extends GetView<RegistrationLogic>{

  final SizingInformation? sizingInformation;

  const RegisterPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context){
    Get.find<RegistrationLogic>();
    return Scaffold(
      backgroundColor: const Color(0xff5E4949),
      body: ListView(
        children: [
          const SizedBox(height: 100,),
          SvgPicture.asset('assets/images/messxp.svg', height: MediaQuery.of(context).size.height * .10,),
          const SizedBox(height: 50,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5.0),
            child: TextFieldProject.textField(hintText:'Your name',obscureText: false, inputText: TextInputType.name,),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10.0),
            child: TextFieldProject.textField(hintText:'Email',obscureText: false, inputText: TextInputType.emailAddress,),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10.0),
            child: TextFieldProject.textField(hintText:'Phone',obscureText: false, inputText: TextInputType.number,),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10.0),
            child: TextFieldProject.textField(hintText:'Password',obscureText: true, inputText: TextInputType.visiblePassword),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10.0),
            child: TextFieldProject.textField(hintText:'Confirm Password',obscureText: true, inputText: TextInputType.visiblePassword),
          ),
          const SizedBox(height: 30,),
          Padding(padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 30.0),
            child: Buttons.buttons(text: "Register",RoutesName: AppPages.LOGIN),
          ),
          Center(
            child: Row(children: [
              const SizedBox(width: 60,),
              const Padding(
                padding: EdgeInsets.all(0.0),
                child: Center(
                  child: Text("Already have an account !",
                    //textAlign:  TextAlign.center,
                    style:
                    TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              TextButtons.textButtons(text: "Login Now", RoutesName: AppPages.LOGIN,alignment: TextAlign.center),
            ],
            ),
          ),
          const SizedBox(height: 50,),
          Padding(padding: const EdgeInsets.all(10.0),
            child :
            SvgPicture.asset('assets/icon/i_button.svg', height: MediaQuery.of(context).size.height * .03,
                alignment: Alignment.bottomRight),
          )
        ],
      ),
    );
  }
}
class RegisterPageMobileLandscape extends GetView<RegistrationLogic>{

  final SizingInformation? sizingInformation;

  const RegisterPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context){
    Get.find<RegistrationLogic>();
    return Scaffold();
  }
}
