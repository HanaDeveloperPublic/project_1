import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Checkout",
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
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xff00AEEF)),
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
              child: Column(
            children: [
              const SizedBox(
                  height: 300,
                  child: Image(
                    image: AssetImage("assets/images/visa.png"),
                    fit: BoxFit.fill,
                  )),
              const Text("or checkout with "),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 1),
                  width: double.infinity,
                  child: IconButton(
                    icon: Image.asset('assets/images/applepay.png'),
                    iconSize: 80,
                    onPressed: () {},
                  )),
              Container(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 1),
                  width: double.infinity,
                  child: IconButton(
                    icon: Image.asset('assets/images/paypal.png'),
                    iconSize: 50,
                    onPressed: () {},
                  )),
              const SizedBox(
                height: 22,
              ),
              Container(
                padding: const EdgeInsets.only(top: 1.0, bottom: 10, left: 30, right: 30),
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff00AEEF)),
                  child: const Text(
                    "Confirm  Pay",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Scaffold()),
                    );
                  },
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
