import 'dart:convert';

List<Breed> breedFromJson(String str) =>
    List<Breed>.from(json.decode(str).map((x) => Breed.fromJson(x)));

class Breed {
  String id;
  String name;
  String temperament;
  String origin;
  String description;
  String lifeSpan;
  String image;
  Breed({
    required this.id,
    required this.name,
    required this.temperament,
    required this.origin,
    required this.description,
    required this.lifeSpan,
    required this.image,
  });

  factory Breed.fromJson(Map<String, dynamic> json) {
    return Breed(
        id: json["id"],
        name: json["name"],
        temperament: json["temperament"],
        origin: json["origin"],
        description: json["description"],
        lifeSpan: json["life_span"],
        image: json["image"]?["url"] ?? "",
      );
  }
}
