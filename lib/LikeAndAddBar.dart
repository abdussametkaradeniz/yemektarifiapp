// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LikeAndAddBar extends StatefulWidget {
  const LikeAndAddBar({Key? key}) : super(key: key);

  @override
  State<LikeAndAddBar> createState() => _LikeAndAddBarState();
}

class _LikeAndAddBarState extends State<LikeAndAddBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Text(
                "Beğen",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            Container(
              child: Text(
                "Ayrıntılar",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
            ),
            Container(
              child: Text(
                "Deftere Ekle",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.red,
        ),
      ),
    );
  }
}
