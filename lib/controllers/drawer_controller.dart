import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawController extends GetxController {
  static DrawController instance = Get.find();
  var scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
  }
}