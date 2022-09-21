import 'package:final_xp_project/modules/dashboard/DashBoardNavigationDrawer/pageLayer.dart';
import 'package:final_xp_project/modules/dashboard/dashboard_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../DashBoardNavigationDrawer/headerLayer.dart';
import '../DashboardLayers/bottomLayer.dart';
import '../DashboardLayers/midLayer.dart';
import '../DashboardLayers/topLayer.dart';

class DashboardPageMobilePortrait extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  PageController pageController = PageController();
  var tabData = [
    "All",
    "Monthly feast",
    "Eid",
    "Puja",
  ];

  DashboardPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Dashboard")),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            HeaderDrawerNavigationBar.headerDrawerNavigationBar(sizingInformation: sizingInformation),
            PageDrawerNavigationBar.pageDrawerNavigationBar(sizingInformation: sizingInformation),
          ],

        ),
      ),
      body: ListView(
        children: [
          DashboardTopLayer.topLayer(sizingInformation: sizingInformation),
          DashboardMidLayer.midLayer(sizingInformation: sizingInformation),
          DashboardBottomLayer.bottomLayer(
              sizingInformation: sizingInformation,
              controller: pageController,
              dashboardLogic: controller,
              tabData: tabData),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            label: "MEMBERS",
            icon: Icon(
              null,
            ),
          ),
          BottomNavigationBarItem(
            label: "BAZAR LIST",
            icon: Icon(
              null,
            ),
          ),
          BottomNavigationBarItem(
            label: "#MEAL",
            icon: Icon(
              null,
            ),
          )
        ],
      ),
    );
  }
}

class DashboardPageMobileLandscape extends StatelessWidget {
  final SizingInformation? sizingInformation;

  const DashboardPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
