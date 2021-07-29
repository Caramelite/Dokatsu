import 'dart:convert';

List<CatCategory> categoryFromJson(String str) =>
    List<CatCategory>.from(json.decode(str).map((x) => CatCategory.fromJson(x)));

class CatCategory {
  CatCategory({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory CatCategory.fromJson(Map<String, dynamic> json) => CatCategory(
        id: json["id"],
        name: json["name"],
      );
}
