import 'package:app_03/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
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
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      //  ThemeData(
      //     primarySwatch: Colors.deepPurple,
      //     fontFamily: GoogleFonts.lato().fontFamily,
      //     appBarTheme: AppBarTheme(
      //       color: Colors.white,
      //       elevation: 0.0,
      //       iconTheme: IconThemeData(
      //         color: Colors.black,
      //       ),
      //       textTheme: Theme.of(context).textTheme,
      //     )),
      initialRoute: MyRoutes.homeRoute,
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
