import 'package:flutter/material.dart';
import 'package:project_1/pages/cart.dart';
import 'package:project_1/pages/product_list.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.pro});

  final Product pro;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              pro.name,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              width: 100,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Cart()),
                  );
                },
                child: const Icon(Icons.card_travel)),
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff00AEEF),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Container(
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    pro.image,
                  ), //This

                  Positioned(
                    bottom: 0,
                    right: 20,
                    child: FloatingActionButton(
                        elevation: 2,
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 40,
              width: 390,
              child: Text(
                pro.name,
                textAlign: TextAlign.left,
                style: const TextStyle(color: Color(0xff00AEEF), fontWeight: FontWeight.w700, fontSize: 28),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Text(
                    pro.description,
                    textAlign: TextAlign.left,
                    style: const TextStyle(color: Color(0xffFF7A45), fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ),
                Text(
                  pro.price.toString(),
                  textAlign: TextAlign.left,
                  style: const TextStyle(color: Color(0xffFF7A45), fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(
                  child: Text(
                    "choose number of carton",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(color: Color(0xffF4CAD3), shape: BoxShape.circle),
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "1",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(color: Color(0xffF4CAD3), shape: BoxShape.circle),
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.all(10),
                  child:
                      const Text("2", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 24)),
                ),
                Container(
                  decoration: const BoxDecoration(color: Color(0xffF4CAD3), shape: BoxShape.circle),
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.all(10),
                  child:
                      const Text("3", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 24)),
                ),
                Container(
                    decoration: const BoxDecoration(color: Color(0xffF4CAD3), shape: BoxShape.circle),
                    width: 30,
                    height: 30,
                    margin: const EdgeInsets.all(10),
                    child: const Text("4",
                        textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 24))),
              ],
            )
          ])),
    );
  }
}
