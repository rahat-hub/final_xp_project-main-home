import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'Registration/RegistrationMobile.dart';
import 'Registration/RegistrationTablet.dart';
import 'registration_logic.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<RegistrationLogic>();
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => RegisterPageMobilePortrait(sizingInformation: sizingInformation),
            landscape: (context) => RegisterPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait:(context) => RegisterPageTabletPortrait(sizingInformation: sizingInformation),
            landscape: (context) => RegisterPageTabletLandscape(sizingInformation: sizingInformation,),
          ),
        );
      },
    );
  }
}
