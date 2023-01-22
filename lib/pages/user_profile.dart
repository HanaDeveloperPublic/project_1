import 'package:flutter/material.dart';

class ProfileUser extends StatefulWidget {
  const ProfileUser({super.key});

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  var new_email;
  final TextEditingController emailController = TextEditingController();

  void updateEmail(val) {
    setState(() {
      new_email = emailController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: TextFormField(
          onFieldSubmitted: (val) {
            print(emailController.text);
            new_email(val);
            setState(() {
              emailController.text = val;
            });
          },
          controller: emailController,
          decoration: const InputDecoration(hintText: 'enter new e-mail', border: OutlineInputBorder()),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
          alignment: Alignment.topLeft,
          child: Text(
            'Your new e-mail is ${emailController.text}',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Color(0xff00AEEF)),
          )),
      const Text("")
    ]);
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('Second text field: ${myController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
              child: TextFormField(
                  controller: myController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Update Email',
                  ))),
        ),
        const SizedBox(
          height: 16,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff00AEEF)),
          child: const Text(
            "Save",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              var newemail = myController.text;
            });
          },
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: Text(
                'Your Updated Email is: ${myController.text}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ],
    );
  }
}
