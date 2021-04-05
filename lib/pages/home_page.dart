import 'package:app_03/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "mohosin akhan";
    return Scaffold(
      appBar: AppBar(
        title: Text("catalog app"),
      ),
      body: Center(
        child: Container(
          child: Text("$days days flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
