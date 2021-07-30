import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '/constants/enums.dart';
import '/constants/controllers.dart';

class PetChoice extends StatelessWidget {
  final String text;
  final PetSelected pet;
  final Widget scaffoldBody;
  const PetChoice(
    this.text,
    this.pet,
    this.scaffoldBody,
  );

  @override
  Widget build(BuildContext context) {
    return Obx(() => ChoiceChip(
          label: Text(text,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Colors.black),
                fontWeight: FontWeight.w600,
              )),
          selected: drawerController.petSelected.value == pet,
          onSelected: (selected) {
            drawerController.petSelected.value = pet;
            if (drawerController.tileSelected.value == TileSelected.breed)
              drawerController.activeScaffoldBody.value = scaffoldBody;
          },
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        ));
  }
}
