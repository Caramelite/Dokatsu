import 'dart:convert';

List<DogBreed> breedFromJson(String str) =>
    List<DogBreed>.from(json.decode(str).map((x) => DogBreed.fromJson(x)));

class DogBreed {
  DogBreed({
    required this.id,
    required this.name,
    required this.lifeSpan,
    required this.bredFor,
    required this.breedGroup,
    required this.temperament,
    required this.image,
  });

  int id;
  String name;
  String lifeSpan;
  String bredFor;
  String breedGroup;
  String temperament;
  String image;

  factory DogBreed.fromJson(Map<String, dynamic> json) => DogBreed(
        id: json["id"] ?? "",
        name: json["name"] ?? "",
        lifeSpan: json["life_span"] ?? "",
        bredFor: json["bred_for"] ?? "",
        breedGroup: json["breed_group"] ?? "",
        temperament: json["temperament"] ?? "",
        image: json["image"]?["url"] ?? "",
      );
}
