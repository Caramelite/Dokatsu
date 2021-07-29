import 'package:dokatsu/models/DogBreed.dart';
import 'package:dokatsu/services/dog_services.dart';
import 'package:get/get.dart';

class DogController extends GetxController {
  static DogController instance = Get.find();
  var breedList = <DogBreed>[].obs;
  var factList = <String>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchBreeds();
    fetchFacts();
    super.onInit();
  }

  void fetchBreeds() async {
    breedList.value = await DogServices.fetchBreeds();
    breedList.forEach((breed) async {
      var imageUrls = await DogServices.fetchImagesByBreed(breed.id);
      breed.image.addAll(imageUrls);
      breed.image = [
        ...{...breed.image}
      ];
    });
    isLoading(false);
  }

  void fetchFacts() async {
    factList.value = await DogServices.fetchFacts();
  }
}
