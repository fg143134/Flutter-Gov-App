import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../commonmodule/AppColor.dart';
import '../productmodule/controllers/target_controller.dart';

class MyTargetChip extends StatelessWidget {
  MyTargetChip({
    Key? key,
  }) : super(key: key);

  final TargetController targetController = Get.put(TargetController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        // physics: NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        itemCount: targetController.targetList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 1.5),
            child: Chip(
              label: Text(targetController.targetList[index].name),
            ),
          );
        },
      );
    });
  }
}
