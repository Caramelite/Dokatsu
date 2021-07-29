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
}
