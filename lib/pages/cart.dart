import 'package:flutter/material.dart';

import 'payment.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cart",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff00AEEF),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text(
                      "Total",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Chip(
                      label: Text("200 SR"),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return const Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: FittedBox(
                          child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Image(image: AssetImage("assets/images/product_images/nova550ml.png")),
                      )),
                    ),
                    title: Text("nova550ml"),
                    subtitle: Text(" Quantity: 5"),
                    trailing: Text(" x"),
                  ),
                );
              },
              itemCount: 5,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(30.0),
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff00AEEF)),
              child: const Text(
                "ORDER NOW",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Payment()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
