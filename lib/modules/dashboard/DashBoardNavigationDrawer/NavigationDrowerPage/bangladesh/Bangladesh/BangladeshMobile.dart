import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../bangladesh_logic.dart';

class BangladeshMobilePortrait extends GetView<BangladeshLogic> {
  final SizingInformation? sizingInformation;

  const BangladeshMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<BangladeshLogic>();
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
            Text("this is Bangladesh")
          ],
        ),
      ),
    );
  }
}

class BangladeshMobileLandscape extends GetView<BangladeshLogic> {
  final SizingInformation? sizingInformation;

  const BangladeshMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<BangladeshLogic>();
    return Scaffold();
  }
}
