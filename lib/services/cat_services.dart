import 'package:http/http.dart' as http;
import 'package:katsuu/models/cat.dart';

class CatsServices {
  static var client = http.Client();
  static Future<List<Category>> fetchCategory() async {
    var response =
        await client.get(Uri.parse('https://api.thedogapi.com/v1/categories'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      List<Category> category = categoryFromJson(jsonString);
      return category;
      // return <the list of product from the jsonString>;
    } else {
      //Get.snackbar("", "Please reload the app.");
      return [];
    }
  }
}
