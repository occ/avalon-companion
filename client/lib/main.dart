import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'widgets/login/login.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avalon Companion',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const Login(),
      // home: const HomePage(title: 'Avalon Companion Home'),
    );
  }
}
