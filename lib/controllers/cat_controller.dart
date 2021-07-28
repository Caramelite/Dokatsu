import 'package:get/get.dart';
import 'package:katsuu/model/cat.dart';
import 'package:katsuu/services/cats_services.dart';

class CatController extends GetxController {
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
    categoryList.value = await CatsServices.fetchCategory();
    isLoading.value = false;
  }

  void fetchBreed() async {
    breedList.value = await CatsServices.fetchBreed();
    isLoading.value = false;
    print(breedList);
  }
}
