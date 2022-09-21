import 'package:animated_background/animated_background.dart';
import 'package:final_xp_project/modules/dashboard/DashBoardNavigationDrawer/NavigationDrowerPage/pakistan/pakistan_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PakistanMobilePortrait extends GetView<PakistanLogic> {
  final SizingInformation? sizingInformation;

  const PakistanMobilePortrait({Key? key, this.sizingInformation,})
      : super(key: key);

  @override
  Widget build(BuildContext context,) {
    Get.find<PakistanLogic>();

    /*ParticleOptions particles = const ParticleOptions(
      baseColor: Colors.cyan,
      spawnOpacity: 0.0,
      opacityChangeRate: 0.25,
      minOpacity: 0.1,
      maxOpacity: 0.4,
      particleCount: 70,
      spawnMaxRadius: 15.0,
      spawnMaxSpeed: 100.0,
      spawnMinSpeed: 30,
      spawnMinRadius: 7.0,
    );*/

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*appBar: AppBar(
          title: Text("Animated Background"),
        ),*/
        // In body we have a AnimatedBackgound,
        // behavior RandomParticleBehaviour.
        body: AnimatedBackground(
          // vsync uses singleTicketProvider state mixin.
          
          behaviour: ChildFlySpaceBehaviour(),
          vsync: PakistanLogic(),
          child: const Center(
              child: Text(
                // center text
                "Hello this is Random Animated Background",
                style: TextStyle(
                    color: Colors.white,fontSize: 40),
              )),
        ),
      ),
    );
  }
}

class PakistanMobileLandscape extends GetView<PakistanLogic> {
  final SizingInformation? sizingInformation;

  const PakistanMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PakistanLogic>();
    return Scaffold();
  }
}
