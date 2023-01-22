import 'package:flutter/material.dart';
import 'package:project_1/components/circul.dart';
import 'package:project_1/components/login_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
          const SizedBox(
            height: 80,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text(
              " Log in ",
              style: TextStyle(
                color: Color(0xff00AEEF),
                fontSize: 40,
              ),
              textAlign: TextAlign.left,
            ),
          ]),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Expanded(
                child: Text(
                  " Please enter your email or log in with social accounts",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              Circular("assets/images/login_images/apple.png"),
              Circular("assets/images/login_images/facebook.png"),
              Circular("assets/images/login_images/gmail.png")
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(35),
            child: const TextField(
              //  controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name ',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: const TextField(
              obscureText: true,
              // controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(right: 5, top: 15),
                child: const Icon(
                  Icons.check_box,
                  color: Color(0xff00AEEF),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 50, top: 15),
                child: const Text(
                  "Remember Me",
                  style: TextStyle(color: Color(0xff00AEEF), fontSize: 16),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 40,
                  top: 15,
                ),
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const LoginButton()
        ])));
  }
}
