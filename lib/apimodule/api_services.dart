//For fetching data
import 'package:es_eidc_app/productmodule/models/target_model.dart';
import 'package:http/http.dart' as http;
import 'package:es_eidc_app/productmodule/models/eservices_model.dart';
import 'package:es_eidc_app/commonmodule/Appstring.dart';

import '../productmodule/models/category_model.dart';

class apiService {
  static var client = http.Client();

  static Future<List<EServices>> getEservices(
      int idcategory, int idtarget) async {
    Uri url;

    if (idcategory == 0 && idtarget == 0) {
      url = Uri.parse(main_api + '/eservices');
    } else if (idcategory != 0 && idtarget == 0) {
      url = Uri.parse(
          main_api + '/eservices?categories_in=' + idcategory.toString());
    } else if (idcategory == 0 && idtarget != 0) {
      url =
          Uri.parse(main_api + '/eservices?targets_in=' + idtarget.toString());
    } else {
      url = Uri.parse(main_api +
          '/eservices?targets_in=' +
          idtarget.toString() +
          '&categories_in=' +
          idcategory.toString());
    }
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var JsonString = response.body;
      return eServicesFromJson(JsonString);
    } else {
      throw Exception('failed to load data');
    }
  }

  //--------
  static Future<List<Target>> getTarget() async {
    Uri url = Uri.parse(main_api + '/targets');
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var JsonString = response.body;
      return targetFromJson(JsonString);
    } else {
      throw Exception('failed to load data');
    }
  }
  //------------

  static Future<List<Welcome>> getCategory() async {
    Uri url = Uri.parse(main_api + '/categories');
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var JsonString = response.body;
      return welcomeFromJson(JsonString);
    } else {
      throw Exception('failed to load data');
    }
  }
}
