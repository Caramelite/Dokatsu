import 'dart:convert';

List<Category> categoryFromJson(String str) =>
    List<Category>.from(json.decode(str).map((x) => Category.fromJson(x)));

String productToJson(List<Category> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Category {
  int id;
  String name;
  Category({required this.id, required this.name});
  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Cat {
  int? id;
  String? lifeSpan;
  String? name;
  String? origin;
  String? temperament;
  String? imageUrl;
  String? description;
  Cat({
    this.id,
    this.lifeSpan,
    this.name,
    this.origin,
    this.temperament,
    this.imageUrl,
    this.description,
  });
}
