import 'package:dokatsu/constants/enums.dart';
import 'package:dokatsu/views/Dogs/dog_breed_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawController extends GetxController {
  static DrawController instance = Get.find();
  var scaffoldKey = GlobalKey<ScaffoldState>();

  var pet = PetSelected.dog.obs;
  var activeScaffoldBody = Rx<Widget>(DogBreedScreen());

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
  }
}