import 'package:final_xp_project/modules/dashboard/DashBoardNavigationDrawer/NavigationDrowerPage/pakistan/Pakistan/PakistanMobile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'pakistan_logic.dart';

class PakistanPage extends StatelessWidget {
  const PakistanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<PakistanLogic>();

    return ResponsiveBuilder(
        builder: (context,sizingInformation) {
          return ScreenTypeLayout(
            mobile: OrientationLayoutBuilder(
              portrait: (context) => PakistanMobilePortrait(sizingInformation: sizingInformation),
              landscape: (context) => PakistanMobilePortrait(sizingInformation: sizingInformation,),
            ),
          );
        }
    );
  }
}
