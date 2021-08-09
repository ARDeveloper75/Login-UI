import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_one/src/pages/homePage.dart';

class UiOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
