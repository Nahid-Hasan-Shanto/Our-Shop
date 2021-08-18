import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopName extends StatelessWidget {
  final String id;
  final String name;
  final String image;
  final String title;

  const ShopName({
    required this.id,
    required this.name,
    required this.image,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100,
            width: 100,
            child: Image.network(image),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.only(left: 5, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Button'),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
