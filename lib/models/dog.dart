// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Dog> dogFromJson(String str) =>
    List<Dog>.from(json.decode(str).map((x) => Dog.fromJson(x)));

String dogToJson(List<Dog> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Dog {
  Dog({
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

  factory Dog.fromJson(Map<String, dynamic> json) => Dog(
        id: json["id"],
        name: json["name"],
        //   lifeSpan: json["life_span"],
        //   temperament: json["temperament"],
        // /origin: json["origin"],
        image: json["image"]['url'],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        // "life_span": lifeSpan,
        //  "temperament": temperament,
        //  "origin": origin,
        // "image": image,
      };
}
/*
class Images {
  Images({
    //this.id,
    this.url,
  });

  // String? id;
  String? url;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        //   id: json["id"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        //   "id": id,
        "url": url,
      };
}*/
/*
class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map?.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
*/