import 'package:get/state_manager.dart';
import 'package:katsuu/Model/dog.dart';
import 'package:katsuu/services/dog_service.dart';

class DogController extends GetxController {
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
