import 'package:es_eidc_app/home.dart';
import 'package:es_eidc_app/productmodule/views/target_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:es_eidc_app/productmodule/views/eservices_list_view.dart';
import 'package:es_eidc_app/commonmodule/AppColor.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: CPrimaryColor,
          elevation: 0,
        ),
        scaffoldBackgroundColor: CBackgroundColor,
        primaryColor: CPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: CTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: home(),
    );
  }
}
