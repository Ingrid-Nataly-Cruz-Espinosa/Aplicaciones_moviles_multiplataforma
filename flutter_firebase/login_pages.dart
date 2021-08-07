import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;



class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> keyForm = new GlobalKey();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String email;
  String password;

  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: _loginForm(),
    );
  }

  


  Widget _loginForm() {
    return ListView(
      key: _formKey,
      padding: EdgeInsets.symmetric(horizontal: 40),
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 5),
          child: Text("Tu correo es: "),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            controller: _emailcontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Email"),                
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text("Password"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            controller: _passwordcontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Password"),
          ),
        ),
        ElevatedButton(
          onPressed: _getValues,
          child: Text('Login'),
        ),
        SizedBox(
          width: 40,
        ),
      ],
    );
  }

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "El correo es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "Correo invalido";
    } else {
      return null;
    }
  }

  save() {
    if (keyForm.currentState.validate()) {
      _getValues();
      print("Correo ${_emailcontroller.text}");
      keyForm.currentState.reset();
    }
  }

  void _getValues() {
    setState(() {
      email = _emailcontroller.text;
      password = _passwordcontroller.text;
      authUser(email, password);
      print(email);
      print(password);
    });
  }

  void _mensaje() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            title: Text('Mensaje de Alerta'),
            content: Text("Lo siento  tu contraseña es incorrecta"));
      },
    );
  }

  void authUser(String email, String password) async {
    try {
      var url = Uri.parse(
          'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyAIrJrTmRCkQcyMzVq0qu02i84e_u-Ppog');
      Map<String, dynamic> map = new Map<String, dynamic>();
      map['email'] = email;
      map['password'] = password;
      var response = await http.post(url, body: map);
      print('Response status: ${response.statusCode}');
      //print('Response body: ${response.body}');
      if (response.statusCode == 200) {
        Navigator.popAndPushNamed(context, 'read');
      }
      if (response.statusCode == 400) {
        _mensaje();
      }
    } catch (error) {
      print(error.toString());
    }
  }
}import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;



class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> keyForm = new GlobalKey();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String email;
  String password;

  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: _loginForm(),
    );
  }

  


  Widget _loginForm() {
    return ListView(
      key: _formKey,
      padding: EdgeInsets.symmetric(horizontal: 40),
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 5),
          child: Text("Tu correo es: "),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            controller: _emailcontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Email"),                
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text("Password"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            controller: _passwordcontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Password"),
          ),
        ),
        ElevatedButton(
          onPressed: _getValues,
          child: Text('Login'),
        ),
        SizedBox(
          width: 40,
        ),
      ],
    );
  }

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "El correo es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "Correo invalido";
    } else {
      return null;
    }
  }

  save() {
    if (keyForm.currentState.validate()) {
      _getValues();
      print("Correo ${_emailcontroller.text}");
      keyForm.currentState.reset();
    }
  }

  void _getValues() {
    setState(() {
      email = _emailcontroller.text;
      password = _passwordcontroller.text;
      authUser(email, password);
      print(email);
      print(password);
    });
  }

  void _mensaje() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            title: Text('Mensaje de Alerta'),
            content: Text("Lo siento  tu contraseña es incorrecta"));
      },
    );
  }

  void authUser(String email, String password) async {
    try {
      var url = Uri.parse(
          'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyAIrJrTmRCkQcyMzVq0qu02i84e_u-Ppog');
      Map<String, dynamic> map = new Map<String, dynamic>();
      map['email'] = email;
      map['password'] = password;
      var response = await http.post(url, body: map);
      print('Response status: ${response.statusCode}');
      //print('Response body: ${response.body}');
      if (response.statusCode == 200) {
        Navigator.popAndPushNamed(context, 'read');
      }
      if (response.statusCode == 400) {
        _mensaje();
      }
    } catch (error) {
      print(error.toString());
    }
  }
}vv