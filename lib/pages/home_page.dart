import 'package:codepure_code/widget/drawar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Codepure Code")),
      body: Center(
        child: Container(
          child: Text(
            'Welcome to learning Flutter!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
      drawer: MyDrawar(),
      // drawer: ,
    );
  }
}
