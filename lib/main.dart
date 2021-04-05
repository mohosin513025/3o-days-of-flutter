import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      themeMode: ThemeMode.light,
      // darkTheme: ThemeData(brightness: Brightness.dark),
      // theme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // initialRoute: LoginPage(),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        // "/login": (context) => HomePage(),
        // "/home": (context) => LoginPage(),
      },
    );
  }
}
