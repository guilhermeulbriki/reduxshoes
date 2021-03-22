import 'package:flutter/material.dart';
import 'package:mobile/models/Sneaker.dart';

import 'modalSneakerOptions.dart';

Widget promoteSneaker(image, title, value, context) {
  return GestureDetector(
    onTap: () {
      showModalSneakerOptions(context, demoSneakers[0]);
    },
    child: Container(
      width: 209,
      height: 264,
      margin: EdgeInsets.only(right: 40.0),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color.fromRGBO(178, 26, 54, 1),
            Color.fromRGBO(24, 35, 48, 1)
          ],
        ),
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Text>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Heebo',
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(217, 218, 223, 1),
                  height: 1.2,
                ),
              ),
              Text(
                '\$ ' + value,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Heebo',
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(217, 218, 223, 1),
                  height: 1.6,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.favorite_outline,
                color: Color.fromRGBO(217, 218, 223, 1),
                size: 24,
              ),
              Icon(
                Icons.arrow_right_alt_outlined,
                color: Color.fromRGBO(217, 218, 223, 1),
                size: 32,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
