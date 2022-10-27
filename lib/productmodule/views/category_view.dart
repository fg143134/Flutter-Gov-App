import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets.dart/category_chip.dart';
import '../../widgets.dart/target_chip.dart';
import '../controllers/category_controller.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({Key? key}) : super(key: key);

  final CategoryController targetController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: Text('تصنيف بنوع الخدمة ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: MyCategoryChip(),
          ),
        ],
      ),
    );
  }
}
