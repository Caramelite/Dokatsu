import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '/constants/controllers.dart';
import './widgets/cat_breed_tile.dart';

class CatBreedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            'Cat Breeds',
            style: GoogleFonts.poppins(
              fontSize: 45,
              fontWeight: FontWeight.w700,
            ),
          ),
          Expanded(
            child: Obx(() => catController.isLoading.value
                ? Center(child: CircularProgressIndicator())
                : StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    itemCount: catController.breedList.length,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    itemBuilder: (context, index) =>
                        CatBreedTile(catController.breedList[index]),
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  )),
          )
        ],
      ),
    );
  }
}
