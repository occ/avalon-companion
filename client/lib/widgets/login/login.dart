import 'package:avalon_companion/utils/user_preferences.dart';
import 'package:avalon_companion/widgets/homepage/homepage.dart';
import 'package:flutter/material.dart';

class _LoginState extends State<Login> {
  final _nameTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameTextController.text = UserPreferences().username.val;
  }

  @override
  void dispose() {
    _nameTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset('assets/images/avalon.jpg')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
                controller: _nameTextController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: 'Who dis?',
                )),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                  textStyle: const TextStyle(fontSize: 24)),
              onPressed: () {
                UserPreferences().username.val = _nameTextController.text;
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const Text('Login'))
        ],
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}
