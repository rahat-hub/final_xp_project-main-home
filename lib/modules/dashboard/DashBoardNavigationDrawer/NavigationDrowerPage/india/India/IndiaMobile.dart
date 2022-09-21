import 'package:final_xp_project/modules/dashboard/DashBoardNavigationDrawer/NavigationDrowerPage/india/india_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class IndiaMobilePortrait extends GetView<IndiaLogic> {
  final SizingInformation? sizingInformation;

  const IndiaMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<IndiaLogic>();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Icon(Icons.home),
              Icon(Icons.people_alt_outlined),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Image.network(
                'https://image.shutterstock.com/image-illustration/bangladesh-flag-being-waved-by-600w-1063028267.jpg'),
            const Text("this is Bangladesh")
          ],
        ),
      ),
    );
  }
}

class IndiaMobileLandscape extends GetView<IndiaLogic> {
  final SizingInformation? sizingInformation;

  const IndiaMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<IndiaLogic>();
    return Scaffold();
  }
}
