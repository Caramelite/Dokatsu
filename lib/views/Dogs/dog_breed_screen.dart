import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '/constants/controllers.dart';
import './widgets/dog_breed_tile.dart';

class DogBreedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            'Dog Breeds',
            style: GoogleFonts.poppins(
              fontSize: 45,
              fontWeight: FontWeight.w700,
            ),
          ),
          Expanded(
            child: Obx(
              () => dogController.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : StaggeredGridView.countBuilder(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      itemCount: dogController.breedList.length,
                      itemBuilder: (context, index) =>
                          DogBreedTile(dogController.breedList[index]),
                      staggeredTileBuilder: (index) => StaggeredTile.fit(1)),
            ),
          ),
        ],
      ),
    );
  }
}
