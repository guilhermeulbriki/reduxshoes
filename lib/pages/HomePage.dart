import 'package:flutter/material.dart';

import 'package:mobile/widgets/promoteSneaker.dart';
import 'package:mobile/widgets/weekSneaker.dart';

import '../navBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 26, 35, 1),
      bottomNavigationBar: NavBar(),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back_tab.png'),
            alignment: Alignment(0, 1.3),
            fit: BoxFit.fitWidth,
          ),
        ),
        padding: EdgeInsets.only(top: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(36, 16, 36, 0),
              child: Text(
                'Discover',
                style: TextStyle(
                  color: Color.fromRGBO(222, 35, 69, 1),
                  fontSize: 48,
                  fontFamily: 'Heebo',
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 36),
                    child: Text(
                      'Promotions',
                      style: TextStyle(
                        color: Color.fromRGBO(228, 229, 236, 1),
                        fontSize: 18,
                        fontFamily: 'Heebo',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    height: 264,
                    margin: EdgeInsets.only(top: 16),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 36),
                      children: [
                        promoteSneaker('assets/images/promote_one.png',
                            'Nike Air Max 720', '190.00', context),
                        promoteSneaker('assets/images/promote_two.png',
                            'Nike Air Max Aquaman', '240.00', context),
                        promoteSneaker('assets/images/promote_three.png',
                            'Nike caminhada matinal', '120.00', context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 36),
                    child: Text(
                      'Of the week',
                      style: TextStyle(
                        color: Color.fromRGBO(228, 229, 236, 1),
                        fontSize: 18,
                        fontFamily: 'Heebo',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    height: 152,
                    margin: EdgeInsets.only(top: 16),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 36),
                      children: [
                        weekSneaker('assets/images/week_one.png',
                            'Nike Flywire Force 1', '340.00', true, context),
                        weekSneaker('assets/images/week_two.png',
                            'Nike caminhada', '230.00', false, context),
                        weekSneaker('assets/images/week_three.png',
                            'Nike homem aranha', '370.00', false, context),
                      ],
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
}
