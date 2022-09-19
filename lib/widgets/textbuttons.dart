import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class TextButtons{
  static textButtons({text,RoutesName,TextAlign? alignment}){
    return TextButton(
      onPressed: (){
        Get.toNamed(RoutesName);
        //Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
      },
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Text(text,
          textAlign:  alignment,//
          style:
          const TextStyle(
            fontSize: 18,
            color: Color(0xffF2C94C),
          ),

        ),
      ),
    );
  }
}