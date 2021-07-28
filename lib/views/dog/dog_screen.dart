import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:katsuu/controllers/dog_controller.dart';

import 'dog_tile.dart';

class DogScreen extends StatelessWidget {
  final DogController dogController = Get.put(DogController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  'BREEDS',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ))
              ],
            ),
          ),
          Expanded(
            child: Obx(() => StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                itemCount: dogController.dogList.length,
                itemBuilder: (context, index) {
                  return DogTile(dogController.dogList[index]);
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1))),
          ),
        ],
      ),
    );
  }
}
