import 'package:flutter/material.dart';

class HeaderDrawerNavigationBar {
  static headerDrawerNavigationBar({sizingInformation}) {
    return UserAccountsDrawerHeader(
      accountName: const Text("Rahat"),
      accountEmail: const Text("rahat.munta@gmail.com"),
      currentAccountPicture: Container(

        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.green,
        ),
        child: const Center(
          child: Text(
            'R',
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.w800, fontSize: 24),
          ),
        ),
      ),
      decoration: const BoxDecoration(
        color: Colors.purpleAccent,
        shape: BoxShape.rectangle,
      ),
    );
  }
}
