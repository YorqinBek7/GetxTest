import 'package:get/get.dart';
import 'package:getx_test/data/model.dart';
import 'package:getx_test/data/service.dart';

class MemesControllers extends GetxController {
  RxBool isLoading = false.obs;
  List<MemesModel> data = <MemesModel>[].obs;
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    try {
      isLoading(true);
      data = await ApiService.getMemes();
    } finally {
      isLoading(false);
    }
  }
}
