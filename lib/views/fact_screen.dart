import 'package:auto_size_text/auto_size_text.dart';
import 'package:dokatsu/constants/controllers.dart';
import 'package:dokatsu/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        (drawerController.pet.value == PetSelected.dog ? 'Dog' : 'Cat') + ' Facts',
        style: GoogleFonts.poppins(
          fontSize: 45,
          fontWeight: FontWeight.w700,
        ),
      ),
      Expanded(
          child: ListView.builder(
              itemCount: drawerController.pet.value == PetSelected.dog
                  ? dogController.factList.length
                  : catController.factList.length,
              itemBuilder: (_, index) {
                return Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      color: Colors.blue[600],
                      child: Container(
                          width: double.infinity,
                          height: 350,
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 30, bottom: 30),
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
                                          drawerController.pet.value ==
                                                  PetSelected.dog
                                              ? dogController.factList[index]
                                              : catController.factList[index],
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
    ]);
  }
}
