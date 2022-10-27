import 'package:es_eidc_app/commonmodule/Appstring.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:es_eidc_app/productmodule/controllers/target_controller.dart';

import '../../commonmodule/AppColor.dart';
import '../../widgets.dart/target_chip.dart';

class TargetListView extends StatelessWidget {
  TargetListView({
    Key? key,
  }) : super(key: key);

  final TargetController targetController = Get.put(TargetController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: Text('تصنيف بالفئة المستهدفة',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: MyTargetChip(),
          ),
        ],
      ),
    );
  }
}
