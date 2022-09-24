import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DashboardLogic extends GetxController {

  late PageController pageController;

  var selectedIndex = 0.obs;

  @override
  void onInit(){
    super.onInit();
    pageController = PageController(initialPage : 0, keepPage: true);
    pageController.addListener(() {
      print(selectedIndex.value);
      print(pageController.page!.toInt());

      try{
        selectedIndex.value = pageController.page!.toInt();
      }
      catch(e){
        //print(e);
      }
    });
  }

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
class CardViewEvent{
  static cardViewEvent({DateName,titleString,NameString}){
    return Card(
      elevation: 2,
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
        title: Text(
          DateName,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w100,
            color: Colors.black38,
          ),
        ),
        subtitle: Text(
          titleString,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black38,
          ),
        ),
        trailing: Container(
          width: 100,
          height: 30,
          child: Card(
            elevation: 10,
            shadowColor: Colors.greenAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide(
                color: Colors.black,
              ),
            ),
            child: Center(
              child: Text(
                NameString,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
