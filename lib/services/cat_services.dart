import 'dart:convert';
import 'dart:io';

import 'package:dokatsu/constants/api_constants.dart';
import 'package:dokatsu/models/Cats/CatBreed.dart';
import 'package:dokatsu/models/Cats/CatCategory.dart';
import 'package:http/http.dart' as http;

class CatServices {
  static var client = http.Client();

  static Future<List<CatBreed>> fetchBreeds() async {
    var response = await client.get(
        Uri.parse('https://api.thecatapi.com/v1/breeds'),
        headers: {HttpHeaders.authorizationHeader: cats_api_key});
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return breedFromJson(jsonString);
    } else
      return [];
  }

  static Future<List<String>> fetchImagesByBreed(String id) async {
    var response = await client.get(
        Uri.parse(
            'https://api.thecatapi.com/v1/images/search?limit=10&breed_id=$id'),
        headers: {HttpHeaders.authorizationHeader: cats_api_key});
    if (response.statusCode == 200) {
      var jsonString = response.body;
      List<String> imageUrls = List<String>.from(json.decode(jsonString).map((x) => x['url']).toList());
      return imageUrls;
    } else
      return [];
  }

  static Future<List<CatCategory>> fetchCategories() async {
    var response = await client.get(
        Uri.parse('https://api.thecatapi.com/v1/categories'),
        headers: {HttpHeaders.authorizationHeader: cats_api_key});
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return categoryFromJson(jsonString);
    } else
      return [];
  }

  static Future<List<String>> fetchImages({int id = -1}) async {
    final uri = id != -1
        ? 'https://api.thecatapi.com/v1/images/search?limit=50category_ids=$id'
        : 'https://api.thecatapi.com/v1/images/search?limit=50';
    var response = await client.get(Uri.parse(uri),
        headers: {HttpHeaders.authorizationHeader: cats_api_key});
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print(json.decode(jsonString));
      return [];
    } else
      return [];
  }
}
