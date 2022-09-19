import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'DashBoard/DashBoardMobile.dart';
import 'DashBoard/DashBoardTablet.dart';
import 'dashboard_logic.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<DashboardLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => DashboardPageMobilePortrait(sizingInformation: sizingInformation),
            landscape: (context) => DashboardPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait:(context) => DashboardPageTabletPortrait(sizingInformation: sizingInformation),
            landscape: (context) => DashboardPageTabletLandscape(sizingInformation: sizingInformation),
          ),
        );
      },
    );
  }
}
