// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MainPageUser extends StatefulWidget {
  @override
  State<MainPageUser> createState() => _MainPageUserState();
}

class _MainPageUserState extends State<MainPageUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //topbar
            Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Yemek Tarifi",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.message),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //body
            Container()
          ],
        ),
      ),
    );
  }
}
