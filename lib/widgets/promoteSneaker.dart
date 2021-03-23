import 'package:flutter/material.dart';
import 'package:mobile/models/Sneaker.dart';

import 'modalSneakerOptions.dart';

Widget promoteSneaker(Sneaker sneaker, context) {
  return GestureDetector(
    onTap: () {
      showModalSneakerOptions(context, sneaker);
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
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Text>[
              Text(
                sneaker.title,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Heebo',
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(217, 218, 223, 1),
                  height: 1.2,
                ),
              ),
              Text(
                '\$ ' + sneaker.price,
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
          Transform.scale(
            scale: 1.7,
            child: Transform.translate(
              offset: Offset(15, -5),
              child: Transform.rotate(
                angle: 6.0,
                child: Image.asset(sneaker.thumbnail),
              ),
            ),
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
