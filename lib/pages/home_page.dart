import 'package:app_03/models/catalog.dart';
import 'package:app_03/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:app_03/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "mohosin akhan";
    return Scaffold(
      appBar: AppBar(
        title: Text("catalog app"),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogModel.items[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
