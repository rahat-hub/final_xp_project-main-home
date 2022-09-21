import 'package:final_xp_project/modules/dashboard/DashBoardNavigationDrawer/NavigationDrowerPage/india/india_binding.dart';
import 'package:final_xp_project/modules/dashboard/DashBoardNavigationDrawer/NavigationDrowerPage/india/india_view.dart';
import 'package:final_xp_project/modules/dashboard/DashBoardNavigationDrawer/NavigationDrowerPage/pakistan/pakistan_binding.dart';
import 'package:final_xp_project/modules/dashboard/DashBoardNavigationDrawer/NavigationDrowerPage/pakistan/pakistan_view.dart';
import 'package:final_xp_project/modules/forgetpassword/forgetpassword_binding.dart';
import 'package:final_xp_project/modules/forgetpassword/forgetpassword_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../modules/dashboard/DashBoardNavigationDrawer/NavigationDrowerPage/bangladesh/bangladesh_binding.dart';
import '../modules/dashboard/DashBoardNavigationDrawer/NavigationDrowerPage/bangladesh/bangladesh_view.dart';
import '../modules/dashboard/dashboard_binding.dart';
import '../modules/dashboard/dashboard_view.dart';
import '../modules/login/login_binding.dart';
import '../modules/login/login_view.dart';
import '../modules/registration/registration_binding.dart';
import '../modules/registration/registration_view.dart';
import 'app_pages.dart';

class AppRoutes{
  static const INITIAL =AppPages.LOGIN;
  static final routes = [
    GetPage(
      name: AppPages.LOGIN,
      page: () => const LoginPage(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
        name: AppPages.REGISTRATION,
        page: () => const RegistrationPage(),
        bindings: [
          RegistrationBinding(),
        ]
    ),
    GetPage(
        name: AppPages.DASHBOARD,
        page: () => const DashboardPage(),
        bindings: [
          DashboardBinding(),
        ]
    ),
    GetPage(
        name: AppPages.FORGETPASSWORD,
        page: () => const ForgetpasswordPage(),
        bindings: [
          ForgetpasswordBinding(),
        ]
    ),
    GetPage(
        name: AppPages.DRAWERPAGEBANGLADESH,
        page: () => const BangladeshPage(),
        bindings: [
          BangladeshBinding(),
        ]
    ),
    GetPage(
        name: AppPages.DRAWERPAGEINDIA,
        page: () => const IndiaPage(),
        bindings: [
          IndiaBinding(),
        ]
    ),
    GetPage(
        name: AppPages.DRAWERPAGEPAKISTAN,
        page: () => const PakistanPage(),
        bindings: [
          PakistanBinding(),
        ]
    )
  ];
}