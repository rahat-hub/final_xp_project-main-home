import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardMidLayer {
  static midLayer({SizingInformation? sizingInformation}) {
    return Column(
      children: [
        Container(
          width: 500,
          height: 200,
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.white,
            elevation: 5,
            shadowColor: Colors.tealAccent,
            child: Row(
              children: [
                Column(
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 190,
                      height: 80,
                      child: Card(
                        shadowColor: Colors.yellowAccent,
                        elevation: 10,
                        child: Center(
                          child: Text(
                            '10\nTotal Members',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    SizedBox(
                      width: 190,
                      height: 80,
                      child: Card(
                        shadowColor: Colors.blueAccent,
                        elevation: 10,
                        child: Center(
                          child: Text(
                            '17\n Total Meals',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 190,
                      height: 80,
                      child: Card(
                        shadowColor: Colors.redAccent,
                        elevation: 10,
                        child: Center(
                          child: Text(
                            '10\n Total Members',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    SizedBox(
                      width: 190,
                      height: 80,
                      child: Card(
                        shadowColor: Colors.deepPurpleAccent,
                        elevation: 10,
                        child: Center(
                          child: Text(
                            '17\n Total Meals',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 500,
          height: 80,
          child: Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Text(
                "Upcoming events",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                width: 130,
              ),
              Text(
                "view all",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
