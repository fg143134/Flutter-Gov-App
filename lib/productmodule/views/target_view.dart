import 'package:es_eidc_app/commonmodule/Appstring.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:es_eidc_app/productmodule/controllers/target_controller.dart';

class TargetListView extends StatelessWidget {
  final TargetController targetController = Get.put(TargetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hellooo"),
      ),
      body: Obx(() {
        if (targetController.isLoading.value)
          return Center(child: CircularProgressIndicator());
        else {
          print(targetController.targetList.length);
          return ListView.builder(
              itemCount: targetController.targetList.length,
              itemBuilder: (context, index) {
                print(targetController.targetList.length);

                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            width: Get.width,
                            height: Get.height,
                            child: Image.network(
                              main_api +
                                  targetController.targetList[index].icon.url,
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
    );
  }
}
