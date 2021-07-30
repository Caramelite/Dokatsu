import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:google_fonts/google_fonts.dart';

import '/constants/controllers.dart';
import '/constants/enums.dart';

class FactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Obx(() => Column(children: [
            Text(
              (drawerController.petSelected.value == PetSelected.dog
                      ? 'Dog'
                      : 'Cat') +
                  ' Facts',
              style: GoogleFonts.poppins(
                fontSize: 45,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(
                child: ListView.builder(
                  
                    itemCount:
                        drawerController.petSelected.value == PetSelected.dog
                            ? dogController.factList.length
                            : catController.factList.length,
                    itemBuilder: (_, index) {
                      return Column(
                        children: [
                          Card(
                            elevation: 7,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                                width: Get.width * 0.9,
                                height: 350,
                                padding: const EdgeInsets.all(30),
                                child: Column(
                                  children: [
                                    Text('#${index + 1}',
                                        style: GoogleFonts.poppins(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    Expanded(
                                        child: Center(
                                            child: AutoSizeText(
                                                drawerController.petSelected
                                                            .value ==
                                                        PetSelected.dog
                                                    ? dogController
                                                        .factList[index]
                                                    : catController
                                                        .factList[index],
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                )))),
                                  ],
                                )),
                          ),
                          SizedBox(height: 10.0),
                        ],
                      );
                    }))
          ])),
    );
  }
}
