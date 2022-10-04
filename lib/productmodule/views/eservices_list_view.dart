import 'package:es_eidc_app/commonmodule/AppColor.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:es_eidc_app/productmodule/controllers/eservices_controller.dart';
import 'package:es_eidc_app/commonmodule/Appstring.dart';
import 'package:es_eidc_app/productmodule/views/search_bar.dart';
import 'package:es_eidc_app/productmodule/views/eService_cards';


class EservicesListView extends StatelessWidget {
  final eServiceController EserviceController = Get.put(eServiceController());

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: 
         SingleChildScrollView(
          child:Column(
            
            children:  <Widget>[
              HeaderWithSearchBox(size: size),
              EserviceCards()


              
            ],
          ),

        )



       
      
    );
  }

  AppBar buildAppBar() {
    return AppBar(
     
      
    );
  }
}
