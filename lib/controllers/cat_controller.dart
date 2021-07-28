import 'package:dokatsu/models/Cats/Breed.dart';
import 'package:dokatsu/models/Cats/Category.dart';
import 'package:dokatsu/services/cat_services.dart';
import 'package:get/get.dart';

class CatController extends GetxController {
  static CatController instance = Get.find();
  var isLoading = true.obs;
  var categoryList = <Category>[].obs;
  var breedList = <Breed>[].obs;
  @override
  void onInit() {
    fetchCategory();
    fetchBreed();
    super.onInit();
  }

  void fetchCategory() async {
    categoryList.value = await CatServices.fetchCategories();
    isLoading.value = false;
  }

  void fetchBreed() async {
    breedList.value = await CatServices.fetchBreeds();
    isLoading.value = false;
  }
}
