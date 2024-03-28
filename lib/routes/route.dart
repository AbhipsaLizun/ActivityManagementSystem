import 'package:activity_management_system/screens/Inspection/form1/section1.dart';
import 'package:activity_management_system/screens/my_task/my_task_screen.dart';
import 'package:activity_management_system/screens/welcome_page.dart';
import 'package:get/get.dart';
import '../screens/Inspection/form10/section10.dart';
import '../screens/Inspection/form11/section11.dart';
import '../screens/Inspection/form12/section12.dart';
import '../screens/Inspection/form13/section13.dart';
import '../screens/Inspection/form14/section14.dart';
import '../screens/Inspection/form15/section15.dart';
import '../screens/Inspection/form16/section16.dart';
import '../screens/Inspection/form17/section17.dart';
import '../screens/Inspection/form18/section18.dart';
import '../screens/Inspection/form19/section19.dart';
import '../screens/Inspection/form2/section2.dart';
import '../screens/Inspection/form20/section20.dart';
import '../screens/Inspection/form21/section21.dart';
import '../screens/Inspection/form22/section22.dart';
import '../screens/Inspection/form3/section3.dart';
import '../screens/Inspection/form4/section4.dart';
import '../screens/Inspection/form5/section5.dart';
import '../screens/Inspection/form6/section6.dart';
import '../screens/Inspection/form7/section7.dart';
import '../screens/Inspection/form8/section8_page1.dart';
import '../screens/Inspection/form8/section8_page2.dart';
import '../screens/Inspection/form9/section9.dart';
import '../screens/dashboard/dashboard_page.dart';
import '../screens/landing/landing_screen.dart';
import '../screens/login/login_page.dart';
import '../screens/splash_screen.dart';

class Routes{
  static String splashScreen = '/';
  static String landingScreen = '/LandingScreen';
  static String welcomePage = '/WelcomePage';
  static String loginPage = '/LoginPage';
  static String dashboardScreen = '/DashboardScreen';
  static String assignTaskScreen = '/AssignTaskScreen';
  static String inspectionForm1 = '/InspectionForm1';
  static String inspectionForm2 = '/InspectionForm2';
  static String inspectionForm3 = '/InspectionForm3';
  static String inspectionForm4 = '/InspectionForm4';
  static String inspectionForm5 = '/InspectionForm5';
  static String inspectionForm6 = '/InspectionForm6';
  static String inspectionForm7 = '/InspectionForm7';
  static String inspectionForm8 = '/InspectionForm8';
  static String inspectionForm8SecondPage = '/InspectionForm8SecondPage';
  static String inspectionForm9 = '/InspectionForm9';
  static String inspectionForm10 = '/InspectionForm10';
  static String inspectionForm11 = '/InspectionForm11';
  static String inspectionForm12 = '/InspectionForm12';
  static String inspectionForm13 = '/InspectionForm13';
  static String inspectionForm14 = '/InspectionForm14';
  static String inspectionForm15 = '/InspectionForm15';
  static String inspectionForm16 = '/InspectionForm16';
  static String inspectionForm17 = '/InspectionForm17';
  static String inspectionForm18 = '/InspectionForm18';
  static String inspectionForm19 = '/InspectionForm19';
  static String inspectionForm20 = '/InspectionForm20';
  static String inspectionForm21 = '/InspectionForm21';
  static String inspectionForm22 = '/InspectionForm22';
  
}

final getPages = [
  GetPage(
    name: Routes.splashScreen,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: Routes.landingScreen,
    page: () => const LandingScreen(),
  ),
  GetPage(
    name: Routes.welcomePage,
    page: () => const WelcomePage(),
  ),
  GetPage(
    name: Routes.loginPage,
    page: () => const LoginPage(),
  ),
  GetPage(
    name: Routes.dashboardScreen,
    page: () => const DashboardScreen(),
  ),
  GetPage(
    name: Routes.assignTaskScreen,
    page: () =>  const AssignTaskScreen(),
  ),
  GetPage(
    name: Routes.inspectionForm1,
    page: () =>  const InspectionForm1(),
  ),
   GetPage(
    name: Routes.inspectionForm2,
    page: () =>  const InspectionForm2(),
  ),
  GetPage(
    name: Routes.inspectionForm3,
    page: () =>  const InspectionForm3(),
  ),
   GetPage(
    name: Routes.inspectionForm4,
    page: () =>  const InspectionForm4(),
  ),
   GetPage(
    name: Routes.inspectionForm5,
    page: () =>  const InspectionForm5(),
  ),
    GetPage(
    name: Routes.inspectionForm6,
    page: () =>  const InspectionForm6(),
  ),
    GetPage(
    name: Routes.inspectionForm7,
    page: () =>  const InspectionForm7(),
  ),
    GetPage(
    name: Routes.inspectionForm8,
    page: () =>  const InspectionForm8(),
  ),
     GetPage(
    name: Routes.inspectionForm8SecondPage,
    page: () =>  const InspectionForm8SecondPage(),
  ),
    GetPage(
    name: Routes.inspectionForm9,
    page: () =>  const InspectionForm9(),
  ),
    GetPage(
    name: Routes.inspectionForm10,
    page: () =>  const InspectionForm10(),
  ),
      GetPage(
    name: Routes.inspectionForm11,
    page: () =>  const InspectionForm11(),
  ),
      GetPage(
    name: Routes.inspectionForm12,
    page: () =>  const InspectionForm12(),
  ),
      GetPage(
    name: Routes.inspectionForm13,
    page: () =>  const InspectionForm13(),
  ),
       GetPage(
    name: Routes.inspectionForm14,
    page: () =>  InspectionForm14(),
  ),
    GetPage(
    name: Routes.inspectionForm15,
    page: () =>  InspectionForm15(),
  ),
      GetPage(
    name: Routes.inspectionForm16,
    page: () =>  InspectionForm16(),
  ),
      GetPage(
    name: Routes.inspectionForm17,
    page: () =>  InspectionForm17(),
  ),
      GetPage(
    name: Routes.inspectionForm18,
    page: () =>  InspectionForm18(),
  ),
      GetPage(
    name: Routes.inspectionForm19,
    page: () =>  InspectionForm19(),
  ),
      GetPage(
    name: Routes.inspectionForm20,
    page: () =>  InspectionForm20(),
  ),
      GetPage(
    name: Routes.inspectionForm21,
    page: () =>  InspectionForm21(),
  ),
      GetPage(
    name: Routes.inspectionForm22,
    page: () =>  InspectionForm22(),
  ),

];