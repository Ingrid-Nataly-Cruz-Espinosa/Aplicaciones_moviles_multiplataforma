import 'package:flutter/material.dart';
import 'package:myagenda/home_pages.dart';
import 'package:myagenda/login_pages.dart';
import 'package:myagenda/read_page.dart';
import 'package:myagenda/write_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange,
          primaryColor: Colors.white,
          accentColor: Colors.black),
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'login': (BuildContext context) => LoginPage(),
        'read': (BuildContext context) => ReadPage(),
        'write': (BuildContext context) => WritePage(),

      },
    );
  }
}