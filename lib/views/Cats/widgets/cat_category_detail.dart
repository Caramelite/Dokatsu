import 'package:dokatsu/constants/controllers.dart';
import 'package:dokatsu/models/Cats/CatCategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CatCategoryDetail extends StatelessWidget {
  final CatCategory category;

  const CatCategoryDetail(this.category);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            'Categories',
            style: GoogleFonts.poppins(
              fontSize: 48,
              fontWeight: FontWeight.w700,
            ),
          ),
          Expanded(
            child: Obx(() => catController.isLoading.value != true
                ? StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    itemCount: catController.categoryList.length,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    itemBuilder: (context, index) {
                      return Text("Hi!");
                    },
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  )
                : Center(child: CircularProgressIndicator())),
          )
        ],
      ),
    );
  }
}
