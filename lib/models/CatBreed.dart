import 'dart:convert';

List<CatBreed> breedFromJson(String str) =>
    List<CatBreed>.from(json.decode(str).map((x) => CatBreed.fromJson(x)));

class CatBreed {
  String id;
  String name;
  String temperament;
  String origin;
  String description;
  String lifeSpan;
  List<String> image;
  CatBreed({
    required this.id,
    required this.name,
    required this.temperament,
    required this.origin,
    required this.description,
    required this.lifeSpan,
    required this.image,
  });

  factory CatBreed.fromJson(Map<String, dynamic> json) {
    var img = json["image"]?['url'] ?? "";
    return CatBreed(
        id: json["id"] ?? "",
        name: json["name"] ?? "",
        temperament: json["temperament"] ?? "",
        origin: json["origin"] ?? "",
        description: json["description"] ?? "",
        lifeSpan: json["life_span"] ?? "",
        image: [img],
      );
  }
}
