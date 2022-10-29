import 'package:get/get.dart';
import 'package:es_eidc_app/productmodule/models/target_model.dart';
import 'package:es_eidc_app/apimodule/api_services.dart';

class TargetController extends GetxController {
  var isLoading = true.obs;
  var targetList = List<Target>.empty().obs;
   int selcindexTarget = -1.obs();


  @override
  void onInit() {
    GetTarget();
    super.onInit();
  }

  void GetTarget() async {
    try {
      isLoading(true);
      var target = await apiService.getTarget();
      if (target != null) {
        targetList.assignAll(target);
      }
    } finally {
      isLoading(false);
      print(targetList.length);
    }
  }
}
