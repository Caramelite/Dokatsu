import 'package:dokatsu/constants/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'breed_tile.dart';

class BreedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BREED'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Obx(() => catController.isLoading.value != true
                  ? StaggeredGridView.countBuilder(
                      crossAxisCount: 2,
                      itemCount: catController.breedList.length,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      itemBuilder: (context, index) {
                        return BreedTile(catController.breedList[index]);
                      },
                      staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                    )
                  : Center(child: CircularProgressIndicator())),
            )
          ],
        ),
      ),
    );
  }
}
