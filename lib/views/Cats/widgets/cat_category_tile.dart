import 'package:dokatsu/models/Cats/CatCategory.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cat_category_detail.dart';

class CatCategoryTile extends StatelessWidget {
  final CatCategory category;
  const CatCategoryTile(this.category);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(CatCategoryDetail(category));
      },
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category.name,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.w800),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
