import 'package:es_eidc_app/productmodule/views/target_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:es_eidc_app/productmodule/controllers/eservices_controller.dart';
import 'package:es_eidc_app/commonmodule/Appstring.dart';

class EserviceCards extends StatelessWidget {
  eServiceController EserviceController;

  EserviceCards(this.EserviceController, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
          if(EserviceController.eserviceList.isEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                 
                ),
                Text(
                  "لايوجد نتائج لهذا البحث",
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
              ],
            );
          }else{
  return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: EserviceController.eserviceList.length ,
        itemBuilder: (context, index) {

          return
 Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 5,
                      spreadRadius: 3,
                      offset: Offset(4.0, 3.0),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.network(
                        main_api +
                            EserviceController.eserviceList[index].icon.url,
                      ),
                    ),
                    Text(
                      EserviceController.eserviceList[index].name,
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
          );

          }
        
      );
          }
    
    });

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
