import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20, right: 6),
                    child: IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Flutter PDX",
                  style: TextStyle(
                      fontFamily: 'Google',
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                )
              ],
            )
          ],
        ),
      ),
      height: 120,
      color: Colors.blue,
    );
  }
}
