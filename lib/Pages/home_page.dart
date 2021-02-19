import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil",),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login",),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Register",),
          BottomNavigationBarItem(icon: Icon(Icons.portrait), label: "Profil",),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Compte",),
        ],
        onTap: (int index){
          switch(index){
            case 0:
              Navigator.pushNamed(context,"/accueil");
              break;
            case 1:
              Navigator.pushNamed(context,"/login");
              break;
            case 2:
              Navigator.pushNamed(context,"/register");
              break;
            case 3:
              Navigator.pushNamed(context,"/profile");
              break;
            case 4:
              Navigator.pushNamed(context,"/my_account");
              break;
          }
        },
      ),
    );
  }
}
