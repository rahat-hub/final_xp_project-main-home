
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
class DashboardTopLayer{
  static topLayer({SizingInformation? sizingInformation}){
    return Container(
      //color: Colors.green,
      child: Column(
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
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: Row(
                  children: [
                    Column(
                      children: const [
                        Text("Last Month",
                            style: TextStyle(color: Colors.grey, fontSize: 15)),
                        SizedBox(height: 5,),
                        Text(" 76556.00",
                            style: TextStyle(color: Colors.grey, fontSize: 20)),
                        SizedBox(height: 5,),
                        Text("Current Month",
                            style: TextStyle(color: Colors.grey, fontSize: 15)),
                        SizedBox(height: 5,),
                        Text("88866.00",
                            style: TextStyle(color: Colors.grey, fontSize: 20)),
                        SizedBox(height: 10,),
                        Text("Total Deposit",
                            style: TextStyle(color: Colors.black, fontSize: 25)),
                      ],
                    ),
                      SizedBox(width: 15,),
                      Column(
                        children: const [
                          SizedBox(height: 150,),
                          Text("2300",style: TextStyle(
                              color: Colors.green, fontSize: 40,fontWeight: FontWeight.w600)),
                          Text('My balance',style: TextStyle(
                              color: Colors.grey, fontSize: 10)),
                        ],
                      ),
                    SizedBox(width: 5,),
                    Column(
                      children: const [
                        Text("Last Month",
                            style: TextStyle(color: Colors.grey, fontSize: 15)),
                        SizedBox(height: 5,),
                        Text(" 76556.00",
                            style: TextStyle(color: Colors.grey, fontSize: 20)),
                        SizedBox(height: 5,),
                        Text("Current Month",
                            style: TextStyle(color: Colors.grey, fontSize: 15)),
                        SizedBox(height: 5,),
                        Text("88866.00",
                            style: TextStyle(color: Colors.grey, fontSize: 20)),
                        SizedBox(height: 10,),
                        Text("Total Expenses",
                            style: TextStyle(color: Colors.black, fontSize: 25)),
                      ],
                    ),
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
      ),
    );
  }
}