import 'package:dokatsu/models/Dogs/Breed.dart';
import 'package:http/http.dart' as http;
class DogServices {
  static var client = http.Client();

  static Future<List<Breed>> fetchBreeds() async {
    var response =
        await client.get(Uri.parse("https://api.thedogapi.com/v1/breeds"));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print("Dog Serivce");
      print(jsonString);
      return breedFromJson(jsonString);
    } else
      return [];
  }
}
