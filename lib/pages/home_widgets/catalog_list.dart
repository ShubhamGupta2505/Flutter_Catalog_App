import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import '../../widgets/themes.dart';
import '../home_page.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return CatalogItem(catalog: catalog);
        },
        itemCount: CatalogModel.items.length);
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        CatalogImage(image: catalog.image),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(MyTheme.darkBluisColor).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.xl.bold.make(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(MyTheme.darkBluisColor),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  child: "Buy".text.make(),
                )
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).white.roundedLg.square(150).make().py16();
  }
}