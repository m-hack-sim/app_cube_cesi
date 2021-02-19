import 'package:flutter/material.dart';
import 'package:new_encounters/Pages/home_page.dart';
import 'package:new_encounters/Pages/login.dart';
import 'package:new_encounters/Pages/my_account.dart';
import 'package:new_encounters/Pages/profile.dart';
import 'package:new_encounters/Pages/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Accueil'),
      routes: <String, WidgetBuilder>{
        "/login": (BuildContext context) => Login(title: "Login",),
        "/register": (BuildContext context) => Register(title: "Register",),
        "/my_account": (BuildContext context) => MyAccount(title: "Mon Compte",),
        "/profile": (BuildContext context) => Profile(title: "Profil",),
        "/accueil": (BuildContext context) => MyHomePage(title: "Accueil",),
      },
    );
  }
}