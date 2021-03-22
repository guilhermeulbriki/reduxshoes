import 'package:flutter/material.dart';

import 'pages/BagPage.dart';
import 'pages/HomePage.dart';
import 'pages/ProfilePage.dart';
import 'pages/ShopPage.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Redux Shoes',
      theme: ThemeData(
        fontFamily: 'Heebo',
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/shop': (context) => ShopPage(),
        '/bag': (context) => BagPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
