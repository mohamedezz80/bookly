import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
    );
  }
}


//  https://github.com/tharwatsamy/my_bookly/blob/main/lib/core/utils/styles.dart

//   https://www.postman.com/restless-space-875499/workspace/students/collection/14058212-d3c30656-4efa-4166-8405-86655985d94d?action=share&creator=14058212