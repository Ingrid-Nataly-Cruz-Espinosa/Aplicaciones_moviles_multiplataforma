import 'package:flutter/material.dart';
import 'package:calculadora/pages/menu_page.dart';
import 'package:calculadora/pages/operaciones_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'menu',
      routes: <String, WidgetBuilder>{
        'menu': (BuildContext context) => MenuPage(),
        'operaciones': (BuildContext context) => OperacionesPage()
      },
    );
  }
}