import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/app/routes/app_pages.dart';
import 'package:news/my_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: MyBinding(),
      getPages: AppPages.routes,
    );
  }
}
