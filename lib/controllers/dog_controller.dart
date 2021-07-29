import 'package:dokatsu/models/Dogs/DogBreed.dart';
import 'package:dokatsu/services/dog_services.dart';
import 'package:get/get.dart';

class DogController extends GetxController {
  static DogController instance = Get.find();
  var breedList = <DogBreed>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchBreeds();
    super.onInit();
  }

  void fetchBreeds() async {
    try {
      isLoading(true);
      breedList.value = await DogServices.fetchBreeds();
    } finally {
      isLoading(false);
    }
  }
}
