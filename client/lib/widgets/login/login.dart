// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset('assets/images/avalon.jpg')),
            ),
          ),
          const Padding(
            //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: 'Who dis?'),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                  textStyle: const TextStyle(fontSize: 24)),
              onPressed: () => print('Click!'),
              child: const Text('LESSGO'))
        ],
      ),
    ));
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}
