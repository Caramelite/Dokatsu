import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:katsuu/controllers/cat_controller.dart';
import 'category_tile.dart';

class CategoryScreen extends StatelessWidget {
  final CatController categoryController = Get.put(CatController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('CATEGORY'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Obx(() => categoryController.isLoading.value != true
                  ? StaggeredGridView.countBuilder(
                      crossAxisCount: 2,
                      itemCount: categoryController.categoryList.length,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      itemBuilder: (context, index) {
                        return CatTile(categoryController.categoryList[index]);
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
