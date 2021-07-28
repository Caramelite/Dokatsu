import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:katsuu/controllers/cat_controller.dart';
import '../menu_drawer.dart';
import 'breed_tile.dart';

class BreedScreen extends StatelessWidget {
  final CatController breedController = Get.put(CatController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('BREED'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Obx(() => breedController.isLoading.value != true
                  ? StaggeredGridView.countBuilder(
                      crossAxisCount: 2,
                      itemCount: breedController.breedList.length,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      itemBuilder: (context, index) {
                        return BreedTile(breedController.breedList[index]);
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
