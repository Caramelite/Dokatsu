import 'package:dokatsu/models/CatBreed.dart';
import 'package:dokatsu/services/cat_services.dart';
import 'package:get/get.dart';

class CatController extends GetxController {
  static CatController instance = Get.find();
  var isLoading = true.obs;
  var breedList = <CatBreed>[].obs;
  var factList = <String>[].obs;
  @override
  void onInit() {
    fetchBreed();
    fetchFacts();
    super.onInit();
  }


  void fetchBreed() async {
    breedList.value = await CatServices.fetchBreeds();
    breedList.forEach((breed) async {
      breed.image.addAll(await CatServices.fetchImagesByBreed(breed.id));
      breed.image = [...{...breed.image}];
    });
    isLoading.value = false;
  }

  void fetchFacts() async {
    factList.value = await CatServices.fetchFacts();
  }
}
