import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

abstract class TextFieldProject {
  /*static textField(
      {
      hintText,
      obscureText,
      inputText,
      validation, key,name}) {
    return FormBuilderTextField(
      key: key,
      name: '',
      child: Column(
        children: [
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: inputText,
            //controller: controllerChacker,
            obscureText: obscureText,

            validator: validation,
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
          ),
        ],
      ),
    );
  }*/
  static formField({key,validator,name,label,obscureText,inputText,}){
    return FormBuilderTextField(
      key: key,
      name: name,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: inputText,
      obscureText: obscureText,
      validator: validator,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        filled: true,
        labelText: label,
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


