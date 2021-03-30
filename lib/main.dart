import 'package:app_03/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(brightness: Brightness.dark),
      // theme: ThemeData.dark(),
      theme: ThemeData(primarySwatch: Colors.orange),
      initialRoute: LoginPage(),
      routes: {
        "/login": (context) => HomePage(),
        "/home": (context) => LoginPage(),
      },
    );
  }
}
