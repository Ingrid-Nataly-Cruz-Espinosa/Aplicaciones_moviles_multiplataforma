void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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