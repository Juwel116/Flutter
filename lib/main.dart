

import 'package:flutter/material.dart';


import 'Cart/CartPage.dart';
import 'ProfilePage/ProfilePage.dart';
import 'SearchPage/SearchPage.dart';
import 'homepage/HomePage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes=<String,WidgetBuilder>{
    'home':(context)=> HomePage(),
    'search':(context)=>SearchPage(),
    'cart' :(context)=>CartPage(),
    'profile' :(context)=>ProfilePage(),
  };


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Codex",
      theme: ThemeData(
        primaryColor: Colors.purple
      ),
      routes: routes,
      initialRoute: 'home',
    );
  }
}

