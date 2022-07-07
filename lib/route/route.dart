import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../first.dart';
import '../second.dart';
import '../third.dart';

String firstscreen = "/firstscreen";
String secondscreen = "/secondscreen";
String thirdscreen = "/thirdscreen";

List<GetPage> getPages = [
  GetPage(
      name: firstscreen,
      page: () => FirstScreen(),
      transition: Transition.rightToLeft),
  GetPage(
      name: secondscreen,
      page: () => SecondScreen(),
      transition: Transition.rightToLeft),
  GetPage(
      name: thirdscreen,
      page: () => ThirdScreen(),
      transition: Transition.rightToLeft),
];
