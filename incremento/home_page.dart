import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _contador = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
          title: Text('Incremento Decremento'),
        ),
        body: Center(
          child: Text(
            '$_contador',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            textScaleFactor: 3,
            maxLines: 3,
            textAlign: TextAlign.justify,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {
                    setState(() {  //este es un valor que nunca va a cambiar y que solo va a funcionar si tenemos la libreria flutter
                      _contador++;
                  });
                  },
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _contador--;
                  });
                  },
                  child: Icon(Icons.horizontal_rule),
                )
              ],
            ),
          )
        );
  }
}

