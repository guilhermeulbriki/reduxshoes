import 'package:flutter/material.dart';
import 'package:mobile/models/Sneaker.dart';

import 'package:mobile/widgets/promoteSneaker.dart';
import 'package:mobile/widgets/weekSneaker.dart';

import '../navBar.dart';

class HomePage extends StatelessWidget {
  final List<Sneaker> weekDemoSneakers =
      demoSneakers.where((sneaker) => !sneaker.isPromoted).toList();

  final List<Sneaker> promoteDemoSneakers =
      demoSneakers.where((sneaker) => sneaker.isPromoted).toList();

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
                        ...List.generate(
                          promoteDemoSneakers.length,
                          (index) => promoteSneaker(
                              promoteDemoSneakers[index], context),
                        ),
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
                        ...List.generate(
                          weekDemoSneakers.length,
                          (index) =>
                              weekSneaker(weekDemoSneakers[index], context),
                        ),
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
