import 'package:es_eidc_app/commonmodule/AppColor.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:es_eidc_app/productmodule/controllers/eservices_controller.dart';
import 'package:es_eidc_app/commonmodule/Appstring.dart';
import 'package:es_eidc_app/productmodule/views/search_bar.dart';
import 'package:es_eidc_app/productmodule/views/eService_cards.dart';

import 'target_view.dart';

class Body extends StatelessWidget {
  final eServiceController EserviceController = Get.put(eServiceController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        HeaderWithSearchBox(size: size),
        TargetListView(
          size: size,
        ),
        EserviceCards(),
      ],
    ));
  }
}
