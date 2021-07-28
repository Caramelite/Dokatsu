import 'package:http/http.dart' as http;
import 'package:katsuu/model/cat.dart';

class CatsServices {
  static var client = http.Client();

  static Future<List<Category>> fetchCategory() async {
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

  static Future<List<Breed>> fetchBreed() async {
    var response =
        await client.get(Uri.parse('https://api.thecatapi.com/v1/breeds'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      List<Breed> breed = breedFromJson(jsonString);
      return breed;
    } else {
      return [];
    }
  }
}
