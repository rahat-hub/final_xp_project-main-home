import 'package:final_xp_project/modules/dashboard/dashboard_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../DashboardLayers/bottomLayer.dart';
import '../DashboardLayers/midLayer.dart';
import '../DashboardLayers/topLayer.dart';

class DashboardPageMobilePortrait extends GetView<DashboardLogic>{
  final SizingInformation? sizingInformation;

  PageController pageController = PageController();

  var tabData = [
    "All",
    "Monthly feast",
  ];

  DashboardPageMobilePortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context){
    Get.find<DashboardLogic>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: ListView(
        children: [
          DashboardTopLayer.topLayer(sizingInformation: sizingInformation),
          DashboardMidLayer.midLayer(sizingInformation: sizingInformation),
          DashboardBottomLayer.bottomLayer(sizingInformation: sizingInformation,controller: pageController,dashboardLogic: controller,tabData: tabData),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "MEMBERS",
            icon: Icon(Icons.circle_sharp,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: "BAZAR LIST",
            icon: Icon(Icons.circle_sharp,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: "#MEAL",
            icon: Icon(Icons.circle_sharp,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
class DashboardPageMobileLandscape extends StatelessWidget {
  final SizingInformation? sizingInformation;
  const DashboardPageMobileLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
