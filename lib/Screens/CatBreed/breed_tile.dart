import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:katsuu/model/cat.dart';

class BreedTile extends StatelessWidget {
  final Breed breed;

  const BreedTile(this.breed);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.network(
                    breed.imageLink,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Obx(
                      () => IconButton(
                        icon: breed.isFavorite.value
                            ? Icon(Icons.favorite_rounded)
                            : Icon(Icons.favorite_border),
                        onPressed: () {
                          breed.isFavorite.toggle();
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 8),
            Text(
              breed.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Text(
              '${breed.id}',
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 8),
            Text(
              breed.temperament,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Text(
              breed.origin,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
