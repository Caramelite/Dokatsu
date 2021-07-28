import 'package:http/http.dart' as http;
import 'package:katsuu/Model/dog.dart';

class DogHelper {
  static var client = http.Client();

  static Future<List<Dog>> fetchData() async {
    var response =
        await client.get(Uri.parse("https://api.thedogapi.com/v1/breeds"));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return dogFromJson(jsonString);
    } else
      return [];
  }
}
