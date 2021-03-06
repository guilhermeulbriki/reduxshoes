import 'package:flutter/material.dart';
import 'package:mobile/models/Sneaker.dart';

import 'modalSneakerOptions.dart';

Widget weekSneaker(Sneaker sneaker, context) {
  return GestureDetector(
    onTap: () {
      showModalSneakerOptions(context, sneaker);
    },
    child: Container(
      width: 133,
      height: 152,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(right: 24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(16),
        color: Color.fromRGBO(48, 48, 65, 1),
        image: DecorationImage(
          image: AssetImage(sneaker.thumbnail),
          alignment: Alignment(0, -0.8),
        ),
      ),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Icon(
              Icons.remove_shopping_cart_outlined,
              color: sneaker.isEnded
                  ? Color.fromRGBO(225, 55, 86, 1)
                  : Color.fromRGBO(225, 55, 86, 0),
              size: 16,
            ),
          ),
          Align(
            heightFactor: 2.6,
            alignment: Alignment.bottomCenter,
            child: Column(
              children: <Text>[
                Text(
                  sneaker.title,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(228, 229, 236, 1),
                    height: 1.3,
                  ),
                ),
                Text(
                  '\$ ' + sneaker.price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(228, 229, 236, 1),
                    height: 1.8,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
