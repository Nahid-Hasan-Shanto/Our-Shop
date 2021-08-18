import 'package:a_chamak/Models/dummy.dart';
import 'package:a_chamak/Models/product.dart';
import 'package:a_chamak/widget/shope_name.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  List<Product> products = Dummy.productList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Card(
              margin: EdgeInsets.only(top: 8),
              elevation: 12,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ShopName(
                  id: products[index].id,
                  name: products[index].name,
                  image: products[index].image,
                  title: products[index].title,
                ),
              )),
        );
      },
    );
  }
}
