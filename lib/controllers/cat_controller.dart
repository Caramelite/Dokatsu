import 'package:get/get.dart';
import 'package:katsuu/models/Cats/Breed.dart';
import 'package:katsuu/models/Cats/Category.dart';
import 'package:katsuu/services/cat_services.dart';

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
    categoryList.value = await CatsServices.fetchCategories();
    isLoading.value = false;
  }

  void fetchBreed() async {
    breedList.value = await CatsServices.fetchBreeds();
    isLoading.value = false;
    print(breedList);
  }
}
