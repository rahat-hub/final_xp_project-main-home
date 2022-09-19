import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Login/LoginMobile.dart';
import 'Login/LoginTablet.dart';
import 'login_logic.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<LoginLogic>();

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return ScreenTypeLayout(
        mobile: OrientationLayoutBuilder(
          portrait: (context) =>
              LoginPageMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              LoginPageMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: OrientationLayoutBuilder(
          portrait: (context) =>
              LoginPageTabletPortrait(sizingInformation: sizingInformation),
          landscape: (context) =>
              LoginPageTabletLandscape(sizingInformation: sizingInformation),
        ),
      );
    });
  }
}
