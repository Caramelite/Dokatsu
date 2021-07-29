import 'package:dokatsu/models/Cats/CatBreed.dart';
import 'package:dokatsu/services/cat_services.dart';
import 'package:get/get.dart';

class CatController extends GetxController {
  static CatController instance = Get.find();
  var isLoading = true.obs;
  var breedList = <CatBreed>[].obs;
  @override
  void onInit() {
    fetchBreed();
    fetchImages();
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

  void fetchImages() async {
    await CatServices.fetchImagesByBreed('abys');
  }
}
