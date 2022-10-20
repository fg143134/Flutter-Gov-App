import 'package:es_eidc_app/commonmodule/Appstring.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:es_eidc_app/productmodule/controllers/target_controller.dart';

class TargetListView extends StatelessWidget {
  final TargetController targetController = Get.put(TargetController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Obx(() {
                if (targetController.isLoading.value)
                  return Center(child: CircularProgressIndicator());
                else {
                  print(targetController.targetList.length);
                  return ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: targetController.targetList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(targetController.targetList[index].name),
                      );
                    },
                  );
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
