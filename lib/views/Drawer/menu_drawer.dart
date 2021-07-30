import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:dokatsu/constants/controllers.dart';
import 'package:dokatsu/constants/enums.dart';
import 'package:dokatsu/views/Drawer/widgets/screen_card.dart';

import '../Cats/cat_breed_screen.dart';
import '../Dogs/dog_breed_screen.dart';
import '../fact_screen.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(''),
            decoration: BoxDecoration(
              color: Color(0xFFEBF1FF),
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/Dokatsu.png'),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Pet('Dog', PetSelected.dog, DogBreedScreen()),
              SizedBox(width: 20.0),
              Pet('Cat', PetSelected.cat, CatBreedScreen()),
            ],
          ),
          ScreenCard(
              'Breeds',
              Icons.pets,
              drawerController.petSelected.value == PetSelected.dog
                  ? DogBreedScreen()
                  : CatBreedScreen(),
              TileSelected.breed),
          ScreenCard('Facts', Icons.fact_check_outlined, FactScreen(),
              TileSelected.fact),
        ],
      ),
    );
  }
}

class Pet extends StatelessWidget {
  final String text;
  final PetSelected pet;
  final Widget scaffoldBody;
  const Pet(
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
