import 'package:dokatsu/models/Cats/CatCategory.dart';
import 'package:flutter/material.dart';

class CatCategoryTile extends StatelessWidget {
  final CatCategory category;
  const CatCategoryTile(this.category);
  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
