import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../dashboard_logic.dart';

class DashboardBottomLayer{
  //TabController tabController = TabController(length: 2, vsync: this);
  static bottomLayer(
      {SizingInformation? sizingInformation, PageController? controller, tabData, DashboardLogic? dashboardLogic}) {
    return SizedBox(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: tabData.length,
              itemBuilder: (context, index) {
                return Obx(() {
                  return InkWell(
                    onTap: () {
                      if (kDebugMode) {
                        print(index);
                      }
                      dashboardLogic?.selectedIndex.value = index;
                      controller?.animateToPage(index, curve: Curves.easeIn, duration: Duration(milliseconds: 1000));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Text(tabData[index]),
                          Container(
                            height: 10,
                            width: 60,
                            color: dashboardLogic?.selectedIndex.value == index ? Colors.yellow : Colors.transparent,
                          ),
                          /*const TabBar(
                            indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(width: 3.0, color: Colors.red),
                              insets: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                            ),
                            indicatorSize: TabBarIndicatorSize.label,
                            isScrollable: true,
                            tabs: [],
                          ),*/
                        ],
                      ),
                    ),
                  );
                });
              },
            ),
          ),
          Expanded(
            child: PageView(
              controller: controller,
              children: dashboardLogic?.pageList as List<Widget>,
            ),
          )
        ],
      ),
    );
  }
}
