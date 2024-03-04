import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constant.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      theme: ThemeData.dark()
          .copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
    );
  }
}

//   https://www.postman.com/restless-space-875499/workspace/students/collection/14058212-d3c30656-4efa-4166-8405-86655985d94d?action=share&creator=14058212