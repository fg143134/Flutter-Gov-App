import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:es_eidc_app/productmodule/controllers/eservices_controller.dart';
import 'package:es_eidc_app/commonmodule/Appstring.dart';

class EserviceCards extends StatelessWidget {
  final eServiceController EserviceController = Get.put(eServiceController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Elevated Card')),
        ),
      ),
    );
    
    
    
    
     /*Scaffold(
      
      body: Obx(() {
        if (EserviceController.isLoading.value)
          return Center(child: CircularProgressIndicator());
        else {
          print(EserviceController.eserviceList.length);
          return ListView.builder(
              itemCount: EserviceController.eserviceList.length,
              itemBuilder: (context, index) {
                print(EserviceController.eserviceList.length);

                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            width: Get.width,
                            height: Get.height,
                            child: Image.network(
                              main_api + EserviceController
                                  .eserviceList[index].icon.url,
                              width: Get.width,
                              height: Get.height,
                              fit: BoxFit.fill,
                              color: Colors.blueAccent,
                              colorBlendMode: BlendMode.color,
                            ))
                      ],
                    )
                  ],
                );
              });
        }
      }),
    );*/
  }
}