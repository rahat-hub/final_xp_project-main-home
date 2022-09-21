import 'package:flutter/material.dart';

abstract class TextFieldProject {
  static textField(
      {
      hintText,
      obscureText,
      inputText,
      validation,controller}) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: inputText,
      //controller: controllerChacker,
      obscureText: obscureText,

      validator: validation,

      /*onSaved: (value) {
        controllerChacker.email = value!;
      },
      validator: (value) {
        return controllerChacker.validateEmail(value!);
      },*/
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        filled: true,
        labelText: hintText,
        labelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xffF2C94C),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0xffF2C94C),
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xffF2C94C),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
