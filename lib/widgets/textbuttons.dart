import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class TextButtons{
  static textButtons({text,RoutesName,TextAlign? alignment, onPressed}){
    return TextButton(
      onPressed: () => onPressed(),
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