import 'package:dokatsu/models/Cats/Breed.dart';
import 'package:dokatsu/models/Cats/Category.dart';
import 'package:http/http.dart' as http;

class CatServices {
  static var client = http.Client();

  static Future<List<Breed>> fetchBreeds() async {
    var response =
        await client.get(Uri.parse('https://api.thecatapi.com/v1/breeds'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      List<Breed> breed = breedFromJson(jsonString);
      print("Cat Serivce");
      print(jsonString);
      return breed;
      // return breedFromJson(jsonString);
    } else
      return [];
  }

  static Future<List<Category>> fetchCategories() async {
    var response =
        await client.get(Uri.parse('https://api.thecatapi.com/v1/categories'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      List<Category> category = categoryFromJson(jsonString);
      return category;
    } else {
      return [];
    }
  }
}
