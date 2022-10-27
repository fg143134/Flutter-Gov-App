import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../commonmodule/AppColor.dart';
import '../productmodule/controllers/category_controller.dart';
import '../productmodule/controllers/eservices_controller.dart';

class MyCategoryChip extends StatelessWidget {
  MyCategoryChip({
    Key? key,
  }) : super(key: key);

  final CategoryController categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        // physics: NeverScrollableScrollPhysics(),
        // shrinkWrap: true,

        itemCount: categoryController.categoryList.length + 1,
        itemBuilder: (context, index) {
          print(categoryController.categoryList.length);
          if (index == 0) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding / 1.5),
              child: InkWell(
                onTap: () =>
                    Get.find<eServiceController>().Geteservices(idcategory: 0),
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
                onTap: () => Get.find<eServiceController>().Geteservices(
                    idcategory:
                        categoryController.categoryList[(index - 1)].id),
                child: Chip(
                  label: Text(categoryController.categoryList[(index - 1)].name
                      .toString()),
                ),
              ),
            );
          }
        },
      );
    });
  }
}
