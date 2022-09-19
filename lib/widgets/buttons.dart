import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Buttons{
  static buttons({text,RoutesName}){
    return MaterialButton(
      minWidth: double.infinity,
      height: 60,
      onPressed: (){
        Get.toNamed(RoutesName);
        //Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardPage())
      },
      color: Color(0xffF2C94C),
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color:  Color(0xffF2C94C),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
      ),
    );
  }
}