import 'dart:io';

import 'package:dokatsu/constants/api_constants.dart';
import 'package:dokatsu/models/Dogs/Breed.dart';
import 'package:http/http.dart' as http;

class DogServices {
  static var client = http.Client();

  static Future<List<Breed>> fetchBreeds() async {
    var response = await client.get(
        Uri.parse("https://api.thedogapi.com/v1/breeds"),
        headers: {HttpHeaders.authorizationHeader: dogs_api_key});
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return breedFromJson(jsonString);
    } else
      return [];
  }
}
