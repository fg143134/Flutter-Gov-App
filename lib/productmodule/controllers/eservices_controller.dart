import 'package:es_eidc_app/apimodule/api_services.dart';
import 'package:es_eidc_app/productmodule/models/eservices_model.dart';
import 'package:get/get.dart';

class eServiceController extends GetxController {

  var isLoading = true.obs;
  var eserviceList =  List<EServices>.empty().obs;

  @override
  void onInit() {
    Geteservices();
    super.onInit();
  }

  void Geteservices() async {
    try {
      
      isLoading(true);
      var eservices = await apiService.getEservices();
      if (eservices != null) {
        eserviceList.assignAll(eservices);

      }
    } finally {
      isLoading(false);
      print(eserviceList.length);

    }
  }

}


