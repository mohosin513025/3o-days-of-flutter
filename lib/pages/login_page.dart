import 'package:app_03/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formKey,
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
              "Welcome $name",
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
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter user name",
                      labelText: "user name",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "User name can not be empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "password",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Password can not empty";
                      } else if (value.length < 6) {
                        return "Password must be more than 6 digits";
                      }
                    },
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Material(
                    color: Colors.deepPurple,
                    borderRadius:
                        BorderRadius.circular(changeButton ? 50 : 10.0),
                    child: InkWell(
                      splashColor: Colors.red,
                      onTap: () => moveToHome(context),
                      // () async {
                      //   setState(() {
                      //     changeButton = true;
                      //   });
                      //   await Future.delayed(Duration(seconds: 1));
                      //   await Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   setState(() {
                      //     changeButton = false;
                      //   });
                      // },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 80 : 120,
                        height: 50,
                        // color: Colors.deepPurple,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                        // decoration: BoxDecoration(
                        //     color: Colors.deepPurple,
                        //     borderRadius:
                        //         BorderRadius.circular(changeButton ? 50 : 10.0)),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  // )
                ],
              ),
            )
          ],
        ),
      ),
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
