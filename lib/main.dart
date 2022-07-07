import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/route/route.dart';

import 'first.dart';

void main() {
  runApp(getxApp());
}

class getxApp extends StatelessWidget {
  const getxApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: FirstScreen(), initialRoute: firstscreen, getPages: getPages);
  }
}
