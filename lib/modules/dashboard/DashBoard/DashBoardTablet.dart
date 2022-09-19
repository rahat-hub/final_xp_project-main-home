import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../dashboard_logic.dart';

class DashboardPageTabletPortrait extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const DashboardPageTabletPortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();
    return Container();
  }
}

class DashboardPageTabletLandscape extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const DashboardPageTabletLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();
    return Container();
  }
}