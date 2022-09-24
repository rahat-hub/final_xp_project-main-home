import 'package:final_xp_project/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class PageDrawerNavigationBar{
  static pageDrawerNavigationBar({sizingInformation,context}){
    return Column(
      children: [
        ListTile(
          title: const Text("BANGLADESH"),
          trailing: const Icon(Icons.arrow_forward),
          onTap: (){
            Get.toNamed(AppPages.DRAWERPAGEBANGLADESH);
            //Navigator.push(context, MaterialPageRoute(builder: (cnx){return PageBappyDrawerNavigationBar.pageBappyDrawerNavigationBar();}));
            //Navigator.push(context, MaterialPageRoute(builder: (context) => const PageRahatDrawerNavigationBar()));
          },
        ),
        ListTile(
          title: const Text("INDIA"),
          trailing: const Icon(Icons.arrow_forward),
          onTap: (){
            Get.toNamed(AppPages.DRAWERPAGEINDIA);
          },
        ),
        ListTile(
          title: const Text("PAKISTAN"),
          trailing: const Icon(Icons.arrow_forward),
          onTap: (){
            Get.toNamed(AppPages.DRAWERPAGEPAKISTAN);
          },
        ),
        /*ListTile(
          title: Text("Ripon vai"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("Payel Apu"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("Putu apu"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("Ujjal vai"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("Rajib vai"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("Siam vai"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("Masud vai"),
          trailing: Icon(Icons.arrow_forward),
        ),*/
      ],
    );
  }
}