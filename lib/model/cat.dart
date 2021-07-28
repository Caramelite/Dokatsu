import 'dart:convert';
import 'package:get/get.dart';

List<Category> categoryFromJson(String str) =>
    List<Category>.from(json.decode(str).map((x) => Category.fromJson(x)));

String categoryToJson(List<Category> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Category {
  Category({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

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

  var isFavorite = false.obs;

  factory Breed.fromJson(Map<String, dynamic> json) => Breed(
        id: json["id"],
        name: json["name"],
        temperament: json["temperament"],
        origin: json["origin"],
        description: json["description"],
        lifeSpan: json["life_span"],
        image: json["image"]["url"],
      );
}
