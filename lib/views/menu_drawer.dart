import 'package:dokatsu/constants/controllers.dart';
import 'package:dokatsu/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Cats/cat_breed_screen.dart';
import 'fact_screen.dart';
import 'Dogs/dog_breed_screen.dart';

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
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ChoiceChip(
                    label: Text('Dog',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.black),
                          fontWeight: FontWeight.w600,
                        )),
                    selected:
                        drawerController.petSelected.value == PetSelected.dog,
                    onSelected: (selected) {
                      drawerController.petSelected.value = PetSelected.dog;
                      if (drawerController.tileSelected.value ==
                          TileSelected.breed)
                        drawerController.activeScaffoldBody.value =
                            DogBreedScreen();
                    },
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 30.0),
                  ),
                  SizedBox(width: 20.0),
                  ChoiceChip(
                    label: Text('Cat',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.black),
                          fontWeight: FontWeight.w600,
                        )),
                    selected:
                        drawerController.petSelected.value == PetSelected.cat,
                    onSelected: (selected) {
                      drawerController.petSelected.value = PetSelected.cat;
                      if (drawerController.tileSelected.value ==
                          TileSelected.breed)
                        drawerController.activeScaffoldBody.value =
                            CatBreedScreen();
                    },
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 30.0),
                  ),
                ],
              )),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 0,
            clipBehavior: Clip.antiAlias,
            child: ListTile(
              selected:
                  drawerController.tileSelected.value == TileSelected.breed,
              selectedTileColor: Colors.grey[200],
              leading: Icon(Icons.pets),
              title: Text('Breed'),
              onTap: () {
                drawerController.activeScaffoldBody.value =
                    drawerController.petSelected.value == PetSelected.dog
                        ? DogBreedScreen()
                        : CatBreedScreen();
                drawerController.tileSelected.value = TileSelected.breed;
                drawerController.closeDrawer();
              },
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 0,
            clipBehavior: Clip.antiAlias,
            child: ListTile(
              selected:
                  drawerController.tileSelected.value == TileSelected.fact,
              selectedTileColor: Colors.grey[200],
              leading: Icon(Icons.fact_check_outlined),
              title: Text('Facts'),
              onTap: () {
                drawerController.activeScaffoldBody.value = FactScreen();
                drawerController.tileSelected.value = TileSelected.fact;
                drawerController.closeDrawer();
              },
            ),
          ),
        ],
      ),
    );
  }
}
