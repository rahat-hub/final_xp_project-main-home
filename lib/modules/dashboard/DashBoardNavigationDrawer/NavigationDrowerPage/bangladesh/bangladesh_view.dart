import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Bangladesh/BangladeshMobile.dart';
import 'bangladesh_logic.dart';

class BangladeshPage extends StatelessWidget {
  const BangladeshPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<BangladeshLogic>();

    return ResponsiveBuilder(
      builder: (context,sizingInformation) {
        return ScreenTypeLayout(
            mobile: OrientationLayoutBuilder(
              portrait: (context) => BangladeshMobilePortrait(sizingInformation: sizingInformation),
              landscape: (context) => BangladeshMobileLandscape(sizingInformation: sizingInformation,),
            ),
        );
      }
    );
  }
}
