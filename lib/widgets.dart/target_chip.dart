import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../commonmodule/AppColor.dart';
import '../productmodule/controllers/eservices_controller.dart';
import '../productmodule/controllers/target_controller.dart';

class MyTargetChip extends StatelessWidget {
  MyTargetChip({
    Key? key,
  }) : super(key: key);
  

  final TargetController targetController = Get.put(TargetController());
  int selectedChip = 0.obs();
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        // physics: NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        itemCount: targetController.targetList.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding / 1.5),
              child: InkWell(
                onTap: () =>
                    Get.find<eServiceController>().Geteservices(idtarget: 0),
                child: Chip(
                  label: Text("الكل"),
                ),
              ),
            );
          } else {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding / 1.5),
              child: InkWell(
                onTap: () {
Get.find<eServiceController>().Geteservices(
                    idtarget: targetController.targetList[index - 1].id);
                     targetController.selcindexTarget  = index -1;
                   
                } ,
                child: Chip(
                  label: Text(targetController.targetList[index - 1].name,
                  style: TextStyle(
              color: index - 1 == targetController.selcindexTarget ? Colors.white : Colors.black
            ),),
 backgroundColor:
                index - 1  == targetController.selcindexTarget ? CPrimaryColor : Colors.grey[300]),
                ),
              )
            ;
          }
        },
      );
    });
  }
}
