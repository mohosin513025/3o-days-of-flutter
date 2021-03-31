import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "assets/images/login_image.png",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          "Welcome",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter user name",
                  labelText: "user name",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter password",
                  labelText: "password",
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                child: Text("Login"),
                style: TextButton.styleFrom(),
                onPressed: () {
                  print("hi mohosin");
                },
              )
            ],
          ),
        )
      ],
    )
        // Center(
        //   child: Text(
        //     "login to app",
        //     style: TextStyle(
        //       fontSize: 30.0,
        //       fontWeight: FontWeight.bold,
        //       color: Colors.blue,
        //     ),
        //   ),
        // ),
        );
  }
}
