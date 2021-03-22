import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routePath = ModalRoute.of(context).settings.name;

    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.transparent),
          margin: EdgeInsets.fromLTRB(30, 0, 30, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                iconSize: 36,
                color: routePath == '/'
                    ? Color.fromRGBO(255, 55, 86, 1)
                    : Color.fromRGBO(68, 68, 88, 1),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                iconSize: 32,
                color: routePath == '/shop'
                    ? Color.fromRGBO(255, 55, 86, 1)
                    : Color.fromRGBO(68, 68, 88, 1),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/shop');
                },
              ),
              IconButton(
                icon: Icon(Icons.shopping_bag),
                iconSize: 32,
                color: routePath == '/bag'
                    ? Color.fromRGBO(255, 55, 86, 1)
                    : Color.fromRGBO(68, 68, 88, 1),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/bag');
                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                iconSize: 38,
                color: routePath == '/profile'
                    ? Color.fromRGBO(255, 55, 86, 1)
                    : Color.fromRGBO(68, 68, 88, 1),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/profile');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
