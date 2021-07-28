import 'package:flutter/material.dart';
import 'package:katsuu/models/Cats/Breed.dart';

import '../breed_detail.dart';

class BreedTile extends StatelessWidget {
  final Breed breed;

  const BreedTile(this.breed);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BreedDetail(breed),
          ),
        );
      },
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                child: Image.network(
                  breed.image,
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
      ),
    );
  }
}
