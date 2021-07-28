import 'package:get/get.dart';
import 'package:katsuu/models/dog.dart';
import 'package:katsuu/services/dog_services.dart';

class DogController extends GetxController {
  static DogController instance = Get.find();
  var dogList = <Dog>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() async {
    try {
      isLoading(true);
      dogList.value = await DogHelper.fetchData();
    } finally {
      isLoading(false);
    }
  }
}
