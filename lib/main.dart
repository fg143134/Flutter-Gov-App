import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:es_eidc_app/productmodule/views/eservices_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "hiiiii",

      home: EservicesListView(),

     );
  }
}
