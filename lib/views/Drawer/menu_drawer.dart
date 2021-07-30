import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '/constants/controllers.dart';
import '/constants/enums.dart';
import '../fact_screen.dart';
import '../Cats/cat_breed_screen.dart';
import '../Dogs/dog_breed_screen.dart';
import '../Drawer/widgets/pet_choice.dart';
import '../Drawer/widgets/screen_card.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: const Text(''),
            decoration: const BoxDecoration(
              color: const Color(0xFFEBF1FF),
              image: const DecorationImage(
                fit: BoxFit.contain,
                image: const AssetImage('assets/images/Dokatsu.png'),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PetChoice('Dog', PetSelected.dog, DogBreedScreen()),
              const SizedBox(width: 20.0),
              PetChoice('Cat', PetSelected.cat, CatBreedScreen()),
            ],
          ),
          Obx(() => ScreenCard(
              'Breeds',
              Icons.pets,
              drawerController.petSelected.value == PetSelected.dog
                  ? DogBreedScreen()
                  : CatBreedScreen(),
              TileSelected.breed)),
          ScreenCard('Facts', Icons.fact_check_outlined, FactScreen(),
              TileSelected.fact),
        ],
      ),
    );
  }
}
