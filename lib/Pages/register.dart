import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

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
                  labelText: "Adresse mail:",
                  hintText: "Entrez votre adresse mail."
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              //controller: controller,
              decoration: InputDecoration(
                  labelText: "Nom d'utilisateur:",
                  hintText: "Entrez votre Nom d'utilisateur."
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
            TextField(
              keyboardType: TextInputType.text,
              //controller: controller,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Confirmez votre mot de passe:",
                  hintText: "Entrez votre mot de passe."
              ),
            ),
            RaisedButton(
              child: Text("Register"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                //ToDo
              },
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
