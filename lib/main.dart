import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kganya_nape_website/constants/colors.dart';
import 'package:kganya_nape_website/screens/home/home.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: AppColors.darkGrey,
          scaffoldBackgroundColor: AppColors.lightGrey,
          brightness: Brightness.dark),
      home: const HomePage(),
    );
  }
}
