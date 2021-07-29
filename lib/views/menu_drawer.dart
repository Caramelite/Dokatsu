import 'package:dokatsu/constants/controllers.dart';
import 'package:dokatsu/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Cats/cat_breed_screen.dart';
import 'Cats/cat_category_screen.dart';
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
                    selected: drawerController.pet.value == PetSelected.dog,
                    onSelected: (selected) {
                      drawerController.pet.value = PetSelected.dog;
                      // drawerController.activeScaffoldBody.value = DogBreedScreen();
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
                    selected: drawerController.pet.value == PetSelected.cat,
                    onSelected: (selected) {
                      drawerController.pet.value = PetSelected.cat;
                      // drawerController.activeScaffoldBody.value = CatBreedScreen();
                    },
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 30.0),
                  ),
                ],
              )),
          ListTile(
            leading: Icon(Icons.pets),
            title: Text('Breed'),
            onTap: () {
              drawerController.activeScaffoldBody.value =
                  drawerController.pet.value == PetSelected.dog
                      ? DogBreedScreen()
                      : CatBreedScreen();
              drawerController.closeDrawer();
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.category_rounded),
          //   title: Text('Category'),
          //   onTap: () {
          //     drawerController.activeScaffoldBody.value =
          //         drawerController.pet.value == PetSelected.dog
          //             ? DogBreedScreen()
          //             : CatCategoryScreen();
          //     drawerController.closeDrawer();
          //   },
          // ),
          // ListTile(
          //   leading: Icon(Icons.how_to_vote),
          //   title: Text('Votes'),
          //   onTap: () => {Navigator.of(context).pop()},
          // ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text('Images'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
