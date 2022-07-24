import 'package:avalon_companion/utils/user_preferences.dart';
import 'package:avalon_companion/widgets/homepage/homepage.dart';
import 'package:flutter/material.dart';

class HomePageState extends State<HomePage> {
  String _userName = UserPreferences().username.val;

  @override
  void initState() {
    UserPreferences.box()
        .listenKey("username", (value) => setState(() => _userName = value));
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avalon Companion"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Hi $_userName"),
          ],
        ),
      ),
    );
  }
}
