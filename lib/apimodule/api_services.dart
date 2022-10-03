//For fetching data
import 'package:http/http.dart' as http;
import 'package:es_eidc_app/productmodule/models/eservices_model.dart';
import 'package:es_eidc_app/commonmodule/Appstring.dart';

class apiService {
  static var client = http.Client();

  static Future<List<EServices>> getEservices() async {
    Uri url = Uri.parse(main_api + '/eservices');
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var JsonString = response.body;
      return eServicesFromJson(JsonString);
    } else {
      throw Exception('failed to load data');
    }
  }
}
