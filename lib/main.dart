import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'pages/login.dart';
import 'pages/login_page_three.dart';
import 'pages/login_two.dart';
import 'pages/verify_account.dart';

//import 'pages/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.blue,
          ),
          // home: const LoginPage(),
          // home: const LoginTwo(),
          home: const CreateAccount(),
          // home: const VerifyAccount(),
        );
      },
    );
  }
}
