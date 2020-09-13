import 'package:flutter/material.dart';
import 'package:manipal_gallery/Pages/HomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void getTheme() async {
    var prefs = await SharedPreferences.getInstance();
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(
              theme: prefs.getBool("theme") != null
                  ? prefs.getBool("theme")
                  : false,
            )));
  }

  @override
  void initState() {
    getTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
