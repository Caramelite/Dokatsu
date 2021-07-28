import 'dart:convert';

List<Breed> breedFromJson(String str) =>
    List<Breed>.from(json.decode(str).map((x) => Breed.fromJson(x)));

class Breed {
  Breed({
    required this.id,
    required this.name,
    // required this.lifeSpan,
    //  required this.temperament,
    //required this.origin,
    required this.image,
  });

  int id;
  String name;
  // String lifeSpan;
  // String temperament;
  //String origin;
  String image;

  factory Breed.fromJson(Map<String, dynamic> json) => Breed(
        id: json["id"],
        name: json["name"],
        //   lifeSpan: json["life_span"],
        //   temperament: json["temperament"],
        // /origin: json["origin"],
        image: json["image"]["url"],
      );
}
