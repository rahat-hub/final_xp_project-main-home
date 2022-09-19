
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
class DashboardTopLayer{
  static topLayer({SizingInformation? sizingInformation}){
    return Column(
      children: [
        const Text(
          "Meal Rate",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
        Stack(
          fit: StackFit.passthrough,
          //alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
              child: Column(
                children: const [
                  Text("Last Month",
                      style: TextStyle(color: Colors.grey, fontSize: 10)),
                  Text(" 76556",
                      style: TextStyle(color: Colors.grey, fontSize: 15)),
                ],
              ),
            ),
            Container(
              height: 100,
              alignment: Alignment.center,
              foregroundDecoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    width: 5,
                    color: const Color.fromARGB(150, 242, 201, 76),
                    style: BorderStyle.solid),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    width: 10,
                    color: const Color.fromARGB(150, 242, 201, 76),
                    style: BorderStyle.solid),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  SvgPicture.asset('assets/icon/mdi-currency-bdt.svg'),
                  const Text(
                    "48.00",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}