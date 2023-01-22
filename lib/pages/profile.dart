import 'package:flutter/material.dart';
import 'package:project_1/pages/user_profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Profile",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xff00AEEF),
        ),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              const SizedBox(
                height: 40,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
                Text(
                  " User Information",
                  style: TextStyle(
                    color: Color(0xff00AEEF),
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.left,
                ),
              ]),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                //mainAxisSize: MainAxisSize.min,
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  SizedBox(
                    width: 400,
                    child: Text(
                      "  Name : Hana Nasser ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  SizedBox(
                    width: 400,
                    child: Text(
                      "  Email : HanaNasser@gmail.com ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
              Container(
                  padding: const EdgeInsets.all(35),
                  child: const
                      // ProfileUser()
                      MyCustomForm()),
              const SizedBox(
                height: 40,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Wish list",
                  style: TextStyle(
                    color: Color(0xff00AEEF),
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
              const SizedBox(
                height: 4,
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
                            child: Image(image: AssetImage("assets/images/product_images/cocaCola250ml.png")),
                          )),
                        ),
                        title: Text("coca Cola 250 ml"),
                        trailing: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                    );
                  },
                  itemCount: 2,
                ),
              ),
            ])));
  }
}
