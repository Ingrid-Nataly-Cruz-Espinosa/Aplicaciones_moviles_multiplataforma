import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WritePage extends StatefulWidget {
  WritePage({Key key}) : super(key: key);

  @override
  _WritePageState createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  final _nombreController = TextEditingController();
  final _emailController = TextEditingController();

  String nombre;
  String email;

  @override
  void dispose() {
    _nombreController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Write'),
      ),
      body: _formAgenda(),
    );
  }

  Widget _formAgenda() {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        Text("Nombre"),
        TextField(
          controller: _nombreController,
        ),
        Text("Correo electronico"),
        TextField(
          controller: _emailController,
        ),
        ElevatedButton(
          onPressed: _getData,
          child: Text("Enviar"),
        ),
      ],
    );
  }

  void _getData() {
    setState(() {
      nombre = _nombreController.text;
      email = _emailController.text;
      _postData(nombre, email);
    });
  }

  void _postData(String nombre, String email) async {
    try {
      var url = Uri.parse(
          'https://proyecto-final-5e300-default-rtdb.firebaseio.com/Agenda.json');

      var data = {'nombre': nombre, 'email': email};
      final response = await http.post(url, body: json.encode(data));
      if (response.statusCode == 200) {
        print('se envio correctamente');
      }
    } catch (error) {
      print(error.toString());
    }
  }
}  