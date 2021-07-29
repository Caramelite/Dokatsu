import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dokatsu/models/Cats/CatBreed.dart';
import 'package:flutter/material.dart';

class CatBreedDetail extends StatelessWidget {
  final CatBreed breed;

  const CatBreedDetail(this.breed);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          breed.name,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
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
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                  ),
                  items: breed.image
                      .where((url) => url.isNotEmpty)
                      .map((url) => CachedNetworkImage(
                            imageUrl: url,
                            placeholder: (context, url) =>
                                Center(child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                            // fit: BoxFit.cover,
                          ))
                      .toList(),
                ),
                // breed.image == ''
                //     ? Image.asset('assets/images/Dokatsu Logo.png',
                //         fit: BoxFit.cover)
                //     : CachedNetworkImage(
                //         imageUrl: breed.image[0],
                //         placeholder: (context, url) =>
                //             Center(child: CircularProgressIndicator()),
                //         errorWidget: (context, url, error) => Icon(Icons.error),
                //         fit: BoxFit.cover,
                //       ),
              ),
              SizedBox(height: 10),
              Text(
                "Breed Name: ",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                breed.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Temperament: ",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                breed.temperament,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Origin: ",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                breed.origin,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Description: ",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                breed.description,
                maxLines: 15,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "LifeSpan: ",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                breed.lifeSpan,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
