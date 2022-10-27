import 'package:es_eidc_app/apimodule/api_services.dart';
import 'package:es_eidc_app/productmodule/models/eservices_model.dart';
import 'package:get/get.dart';

class eServiceController extends GetxController {
  var isLoading = true.obs;
  var eserviceList = List<EServices>.empty().obs;
  int IDCat = 0.obs();
  int IDTar = 0.obs();

  final int? iDcategory;
  final int? IDTarget;

  eServiceController(this.iDcategory, this.IDTarget);

  @override
  void onInit() {
    Geteservices(idcategory: IDCat, idtarget: IDTar);
    super.onInit();
  }

  void Geteservices({int? idcategory, int? idtarget}) async {
    try {
      IDCat = idcategory ?? IDCat;
      IDTar = idtarget ?? IDTar;
      isLoading(true);
      var eservices = await apiService.getEservices(IDCat, IDTar);
      if (eservices != null) {
        eserviceList.assignAll(eservices);
      }
    } finally {
      isLoading(false);
      print(eserviceList.length);
    }
  }
}
