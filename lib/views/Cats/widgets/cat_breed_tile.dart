import 'package:cached_network_image/cached_network_image.dart';
import 'package:dokatsu/models/CatBreed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cat_breed_detail.dart';

class CatBreedTile extends StatelessWidget {
  final CatBreed breed;

  const CatBreedTile(this.breed);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(CatBreedDetail(breed));
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              child: breed.image.firstWhere((url) => url.isNotEmpty,
                          orElse: () => '') ==
                      ''
                  ? Image.asset('assets/images/Dokatsu Logo.png',
                      fit: BoxFit.cover)
                  : CachedNetworkImage(
                      imageUrl: breed.image.firstWhere((url) => url.isNotEmpty),
                      placeholder: (context, url) =>
                          Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                      fit: BoxFit.cover,
                    ),
            ),
            SizedBox(height: 8),
            Text(
              breed.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
