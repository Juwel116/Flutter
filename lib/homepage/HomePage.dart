

import 'package:flutter/material.dart';
import 'package:flutter_app1/Cart/CartPage.dart';
import 'package:flutter_app1/ProfilePage/ProfilePage.dart';
import 'package:flutter_app1/SearchPage/SearchPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  int currentIndex=0;
  List<Widget> contents=[SearchPage(),CartPage(),ProfilePage()];

  @override
    


  Widget build(BuildContext context) {
    return Scaffold(
      body: contents[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
          onTap: getCurrentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home')),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),title: Text('Cart')),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text('Profile')),
          ]
      ),
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text('CODEX'),
          
        ),
    );
  }

  void getCurrentIndex(int value) {
    setState(() {
      currentIndex=value;
    });
  }
}
