import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Image.asset(
                  "assets/image/login.png",
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lato',
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                    ),

                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      child: Text("Login"),
                      style: TextButton.styleFrom(
                        minimumSize: Size(150, 40),
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
