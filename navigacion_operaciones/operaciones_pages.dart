import 'package:flutter/material.dart';

class OperacionesPage extends StatefulWidget {
  OperacionesPage({Key key}) : super(key: key);
  
  @override
  _OperacionesPageState createState() => _OperacionesPageState();
}
class _OperacionesPageState extends State<OperacionesPage> {
  final valorController = TextEditingController();
  final valor2Controller = TextEditingController();
  dynamic _total = 0; //declaramos una vaiable dinamica que podra ser utilizada para cualquier accion 
  int _numerouno = 0; //aqui declaramos una variable de tipo entero
  int _numerodos = 0; //aqui declaramos otra variable de tipo entero
  final textoperacion = TextEditingController();
  final texttotal = TextEditingController();

  @override
  void dispose() {
    valorController.dispose();
    valor2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App calculadora"), //titulo de la aplicacion
        ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),  
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5), // en esta parte va a guardar los numero que escriba el usurio
                child: Text("Primer Numero")),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: TextField(
                controller: valorController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Numero1",
                ),
                onChanged: (numeros) {
                  print("$numeros");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Text("Segundo Numero")),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: TextField(
                controller: valor2Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Numero2",
                ),
                onChanged: (numeros) {
                  print("$numeros");
                },
             ),
           ),               
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Text("Total= $_total", textAlign:  TextAlign.center, //aqui va a imprime el resultado de las operaciones
        style: TextStyle(fontSize: 80, color: Colors.black),
        textScaleFactor: 1,
      ),
    ),            
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, 
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton( 
                  heroTag: "btn",
                  child: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      _numerouno = int.parse(valorController.text);
                      _numerodos = int.parse(valor2Controller.text);
                      _total = _numerouno + _numerodos;  //realiza la suma
                    });
                  }),
              SizedBox(
                width: 15,
              ),
              FloatingActionButton(
                  heroTag: "btn2",
                  child: Icon(Icons.horizontal_rule),
                  onPressed: () {
                    setState(() {
                      _numerouno = int.parse(valorController.text);
                      _numerodos = int.parse(valor2Controller.text);
                      _total = _numerouno - _numerodos; //realiza la resta 
                    });
                  }),
              SizedBox(
                width: 15,
              ),
              FloatingActionButton(
                  heroTag: "btn2",
                  child: Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      _numerouno = int.parse(valorController.text);
                      _numerodos = int.parse(valor2Controller.text);
                      _total = _numerouno * _numerodos; //realiza la multiplicacion
                    });
                  }),
               SizedBox(
                width: 15,
              ),
              FloatingActionButton(
                  heroTag: "btn2",
                  child: Text('/'),
                  onPressed: () {
                    setState(() {
                      _numerouno = int.parse(valorController.text);
                      _numerodos = int.parse(valor2Controller.text);
                      _total = _numerouno / _numerodos;  // realiza la divicion.
                    });
                  }),
            ],
          ),
        ));
  }
}