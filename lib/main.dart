import 'package:codepure_code/pages/login_page.dart';
import 'package:codepure_code/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageRoutes.loginPage == '/login' ? LoginPage() : null,
    );
  }
}
