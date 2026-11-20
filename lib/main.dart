import 'package:codepure_code/pages/login_page.dart';
import 'package:codepure_code/pages/home_page.dart';
import 'package:codepure_code/routes/routes.dart';
import 'package:codepure_code/widget/myTheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Mytheme.lightTheme(context),

      initialRoute: PageRoutes.homePage,

      routes: {
        PageRoutes.loginPage: (context) => LoginPage(),
        PageRoutes.homePage: (context) => HomePage(),
      },
    );
  }
}
