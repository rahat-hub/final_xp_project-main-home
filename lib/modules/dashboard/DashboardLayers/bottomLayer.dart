import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../dashboard_logic.dart';

class DashboardBottomLayer {
  //TabController tabController = TabController(length: 2, vsync: this);
  static bottomLayer(
      {SizingInformation? sizingInformation,
      PageController? controller,
      tabData,
      DashboardLogic? dashboardLogic}) {
    return SizedBox(
      height: 350,
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
                      controller?.animateToPage(index,
                          curve: Curves.easeIn,
                          duration: const Duration(milliseconds: 800));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Text(tabData[index]),
                          Container(
                            height: 10,
                            width: 40,
                            color: dashboardLogic?.selectedIndex.value == index
                                ? Colors.yellow
                                : Colors.transparent,
                          ),
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
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Gossip",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: const Text(
              'All 4 pie chart should have a common filter based on month, quarter.\nalso should have a print option\npie chart need to be enhanced.Full length court name, black color text.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              SizedBox(
                width: 30,
              ),
              Icon(Icons.favorite),
              SizedBox(
                width: 30,
              ),
              Icon(Icons.messenger_outline),
              SizedBox(
                width: 30,
              ),
              Icon(Icons.share),
            ],
          ),
        ],
      ),
    );
  }
}
