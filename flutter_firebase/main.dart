import 'package:flutter/material.dart';
import 'package:myagenda/login_pages.dart';
import 'package:myagenda/read_page.dart';
import 'package:myagenda/write_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange,
          primaryColor: Colors.white,
          accentColor: Colors.black),
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'read': (BuildContext context) => ReadPage(),
        'write': (BuildContext context) => WritePage(),

      },
    );

  }
}v