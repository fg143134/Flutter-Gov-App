import 'package:es_eidc_app/productmodule/models/category_model.dart';
import 'package:es_eidc_app/apimodule/api_services.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  var isLoading = true.obs;
  var categoryList = List<Welcome>.empty().obs;

  @override
  void onInit() {
    GetCategory();
    super.onInit();
  }

  void GetCategory() async {
    try {
      isLoading(true);
      var category = await apiService.getCategory();
      if (category != null) {
        categoryList.assignAll(category);
      }
    } finally {
      isLoading(false);
      print(categoryList.length);
    }
  }
}
