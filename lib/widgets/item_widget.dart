import 'package:flutter/material.dart';
import 'package:app_03/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  // const Itemwidget({ Key? key }) : super(key: key);
  final Item item;

  const ItemWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
