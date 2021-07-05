class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "galaxy s32",
      desc: "Samsung galaxy S 32 Pro",
      price: 16999,
      color: "#090909",
      image:
          "https://www.tatacliq.com/samsung-galaxy-a32-128-gb-awesome-blue-6-gb-ram-dual-sim-4g/p-mp000000008976548?cid=ps:E_sok-tatacliq-shopping-ssc-mobiles-accessories:Google:PLA_Electronincs&gclid=Cj0KCQjwsLWDBhCmARIsAPSL3_2e7NWhgz8xXjd4f3B_K0s5FN1M7cTGnBB8CLtOdHIzTYZo2dwj9lIaAnF9EALw_wcB",
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}
