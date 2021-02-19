import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              //controller: controller,
              decoration: InputDecoration(
                  labelText: "Adresse mail / Nom d'utilisateur:",
                  hintText: "Entrez votre adresse mail ou Nom d'utilisateur."
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              //controller: controller,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Mot de passe:",
                  hintText: "Entrez votre mot de passe."
              ),
            ),
            RaisedButton(
              child: Text("Connect"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                //ToDo
              },
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
