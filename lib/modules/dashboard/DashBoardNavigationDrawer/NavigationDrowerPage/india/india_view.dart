import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'India/IndiaMobile.dart';
import 'india_logic.dart';

class IndiaPage extends StatelessWidget {
  const IndiaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<IndiaLogic>();

    return ResponsiveBuilder(
        builder: (context,sizingInformation) {
          return ScreenTypeLayout(
            mobile: OrientationLayoutBuilder(
              portrait: (context) => IndiaMobilePortrait(sizingInformation: sizingInformation),
              landscape: (context) => IndiaMobileLandscape(sizingInformation: sizingInformation,),
            ),
          );
        }
    );
  }
}
