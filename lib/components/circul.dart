import 'package:flutter/material.dart';
import 'package:project_1/pages/product_list.dart';

class Circular extends StatelessWidget {
  Circular(this.image);
  String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProductList()),
          );
        },
        child: Stack(
          children: <Widget>[
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0, // soften the shadow
                    spreadRadius: 3.0, //extend the shadow
                    offset: Offset(
                      2.0, // Move to right 5  horizontally
                      2.0, // Move to bottom 5 Vertically
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 25,
                right: 25, //give the values according to your requirement
                child: SizedBox(
                  height: 45,
                  width: 45,
                  child: Image(
                      image: AssetImage(
                    image,
                  )),
                )),
          ],
        ));
  }
}
