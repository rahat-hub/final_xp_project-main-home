import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DashboardLogic extends GetxController {

  var selectedIndex = 0.obs;

  List<Widget> pageList = [
    /*Container(
      width: 100,
      color: Colors.red,
    ),
    Container(
      width: 100,
      color: Colors.green,
    ),*/
    Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      shadowColor: Colors.blue,
      child: ListTile(
        leading: SizedBox(
          //padding: const EdgeInsets.all(5.0),
          height: 50,
          width: 50,
          child: SvgPicture.asset('assets/images/full_pizzea.svg',
              height: double.infinity),
        ),
        title: const Text(
          "30 Nov, 2019",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w100,
            color: Colors.black38,
          ),
        ),
        subtitle: const Text(
          "Monthly Feast on 30th November 2019",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black38,
          ),
        ),
        trailing: Container(
          width: 100,
          height: 30,
          child: Card(
            elevation: 5,
            shadowColor: Colors.greenAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide(
                color: Colors.black,
              ),
            ),
            child: const Center(
              child: Text(
                'Remind me',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
    Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      shadowColor: Colors.blue,
      child: ListTile(
        leading: SizedBox(
          height: 50,
          width: 50,
          //padding: const EdgeInsets.all(5.0),
          child: SvgPicture.asset('assets/images/full_pizzea.svg',
              height: double.infinity),
        ),
        title: const Text(
          "15 Nov, 2019",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w100,
            color: Colors.black38,
          ),
        ),
        subtitle: const Text(
          "Monthly Feast on 15th November 2019",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black38,
          ),
        ),
        trailing: Container(
          width: 100,
          height: 30,
          child: Card(
            elevation: 5,
            shadowColor: Colors.greenAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide(
                color: Colors.black,
              ),
            ),
            child: const Center(
              child: Text(
                'Show Demo',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),
        ),
      ),
    ),

  ];

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
