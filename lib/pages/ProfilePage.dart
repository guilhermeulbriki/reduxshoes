import 'package:flutter/material.dart';

import '../navBar.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 26, 35, 1),
      bottomNavigationBar: NavBar(),
      body: Container(
        padding: EdgeInsets.only(top: 32),
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(36, 16, 36, 0),
              child: Text(
                'Profile',
                style: TextStyle(
                  color: Color.fromRGBO(222, 35, 69, 1),
                  fontSize: 48,
                  fontFamily: 'Heebo',
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
