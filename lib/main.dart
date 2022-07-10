// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_full_course_project/pages/home_page.dart';
import 'package:flutter_full_course_project/pages/login_page.dart';
import 'package:flutter_full_course_project/utils/routes.dart';
import 'package:flutter_full_course_project/widgets/themes.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          theme: MyTheme.LightTheme(context),
          darkTheme: MyTheme.darkTheme(context),
          initialRoute: MyRoutes.homeRoute,
          routes: {
            "/":(context) => LoginPage(),
            MyRoutes.homeRoute:(context)=>HomePage(),
            MyRoutes.loginRoute:(context) => LoginPage()
          },
    );
  }
}

