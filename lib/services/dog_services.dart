import 'dart:convert';
import 'dart:io';

import 'package:dokatsu/constants/api_constants.dart';
import 'package:dokatsu/models/DogBreed.dart';
import 'package:http/http.dart' as http;

class DogServices {
  static var client = http.Client();

  static Future<List<DogBreed>> fetchBreeds() async {
    var response = await client.get(
        Uri.parse("https://api.thedogapi.com/v1/breeds"),
        headers: {HttpHeaders.authorizationHeader: dogs_api_key});
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return breedFromJson(jsonString);
    } else
      return [];
  }

  static Future<List<String>> fetchImagesByBreed(int id) async {
    var response = await client.get(
        Uri.parse(
            'https://api.thedogapi.com/v1/images/search?limit=100&breed_id=$id'),
        headers: {HttpHeaders.authorizationHeader: dogs_api_key});
    if (response.statusCode == 200) {
      var jsonString = response.body;
      List<String> imageUrls = List<String>.from(
          json.decode(jsonString).map((x) => x['url']).toList());
      return imageUrls;
    } else
      return [];
  }

  static Future<List<String>> fetchFacts() async {
    var response = await client.get(
        Uri.parse('https://dog-api.kinduff.com/api/facts?number=100'),
        headers: {HttpHeaders.authorizationHeader: dogs_api_key});
    if (response.statusCode == 200) {
      var jsonString = response.body;
      List<String> dogFacts =
          List<String>.from(json.decode(jsonString)['facts']);
      return dogFacts;
    } else
      return [];
  }
}
