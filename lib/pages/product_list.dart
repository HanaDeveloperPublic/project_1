import 'package:flutter/material.dart';
import 'package:project_1/pages/cart.dart';
import 'package:project_1/pages/product_details.dart';
import 'package:project_1/pages/profile.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<Product> product = [
    Product("Nova 550 ml", "assets/images/product_images/nova550ml.png", "12 Bottles in a Shrink", 15.0),
    Product("Coca Cola 250 ml", "assets/images/product_images/cocaCola250ml.png", "30 Bottles in a Box", 30.0),
    Product("Oska 1.5 L", "assets/images/product_images/oska15L.png", "6 Bottles in a Shrink", 20.0),
    Product("Ival 1.5 L", "assets/images/product_images/ival15L.png", "6 Bottles in a Shrink", 25.0),
    Product("Safa Makkah 330 ml", "assets/images/product_images/safaMakkah330ml.png", "24 Bottles in a Box", 15.0),
    Product("Pepsi 250 ml", "assets/images/product_images/pepsi250ml.png", "24 Bottles in a Box - Glass Bottles", 30.0),
    Product(
        "Sokia Al Medina 200 ml", "assets/images/product_images/sokiaAlMedina200ml.png", "24 Bottles in a Box", 20.0),
    Product("KDD Cocktail 180 ml", "assets/images/product_images/kDDCocktail180ml.png", "18 Bottles in a Box", 30.0),
    Product("Afnan 330 ml", "assets/images/product_images/afnan330ml.png", "40 Bottles in a Box", 20.0),
    Product("Hala 330 ml", "assets/images/product_images/hala330ml.png", "40 Bottles in a Box", 30.0),
    Product("Arwa 330 ml", "assets/images/product_images/arwa330ml.png", "24 Bottles in a Box", 20.0),
    Product("KDD Chocolate Milk 180 ml", "assets/images/product_images/kDDChocolateMilk180ml.png",
        "6 Bottles in a Shrink", 25.0),
    Product(
        "KDD Orange Juice 180 ml", "assets/images/product_images/kDDOrangeJuice180ml.png", "24 Bottles in a Box", 15.0),
    Product("Zamzam 5 L ", "assets/images/product_images/zamzam5L.png", "1 Bottle", 30.0),
    Product("Mana 330 ml Mosque", "assets/images/product_images/mana330ml.png", "40 Bottles in a Box", 20.0),
    Product("Al Marai Apple Juice 140 ml", "assets/images/product_images/alMaraiAppleJuice140ml.png",
        "18 Bottles in a Box", 30.0),
    Product("Al Marai Orange Juice 140 ml", "assets/images/product_images/alMaraiOrangeJuice140ml.png",
        "18 Bottles in a Box", 15.0),
    Product("Suntop Orange 125 ml", "assets/images/product_images/suntopOrange125ml.png", "30 Bottles in a Box", 30.0),
    Product(
        "Perrier Lemon 200 ml", "assets/images/product_images/perrierLemon200ml.png", "6 Bottles in a Shrink", 20.0),
    Product(
        "Coca Cola Light 250 ml", "assets/images/product_images/cocaColaLight250ml.png", "30 Bottles in a Box", 25.0),
    Product("Aba 330 ml", "assets/images/product_images/aba330ml.png", "40 Bottles in a Box", 15.0),
    Product("Rita Red 275 ml", "assets/images/product_images/ritaRed275ml.png", "24 Bottles in a Box - Glass Bottles",
        30.0),
    Product("Hana 200 ml", "assets/images/product_images/hana200ml.jpeg", "24 Bottles in a Box", 20.0),
    Product("Al Reef 600 ml", "assets/images/product_images/alReef600ml.png", "30 Bottles in a Box", 30.0),
    Product("Al Ain 600 ml", "assets/images/product_images/alAin600ml.png", "30 Bottles in a Box", 20.0),
    Product("Al Bayan 330 ml", "assets/images/product_images/alBayan330ml.png", "40 Bottles in a Box", 30.0),
    Product("Akoya 600 ml", "assets/images/product_images/akoya600ml.png", "30 Bottles in a Box", 20.0),
    Product("Relam 330 ml", "assets/images/product_images/relam330ml.png", "40 Bottles in a Box", 25.0),
    Product("Heineken 330 ml", "assets/images/product_images/heineken330ml.png", "6 Bottles in a Shrink", 15.0),
    Product("Predator 250 ml", "assets/images/product_images/predator250ml.png", "12 Bottles in a Shrink", 30.0)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
              child: const Icon(Icons.person)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // user should go to profile

              const SizedBox(
                width: 100,
              ),
              const Text(
                "Products",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
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
        body: SafeArea(
            child: ListView.separated(
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, _) => const SizedBox(
            height: 8,
            // width: 10,
          ),
          itemCount: 29,
          itemBuilder: (context, index) =>
              Padding(padding: const EdgeInsets.all(8), child: buildCard(product: product[index], context: context)),
        )));
  }
}

Widget buildCard({required BuildContext context, required Product product}) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductDetails(pro: product)),
                  );
                },
                child: SizedBox(
                  height: 130,
                  child: Image.asset(
                    product.image,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [Text(product.name)],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [Text(product.price.toString())],
            )
          ],
        ),
        Column(
          children: [
            Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductDetails(pro: product)),
                  );
                },
                child: SizedBox(
                  height: 130,
                  child: Image.asset(
                    product.image,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [Text(product.name)],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [Text(product.price.toString())],
            )
          ],
        ),
      ],
    );

class Product {
  final String name;
  final String image;
  final String description;
  final double price;

  Product(this.name, this.image, this.description, this.price);
}
