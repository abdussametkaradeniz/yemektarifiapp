import 'package:flutter/material.dart';
import 'package:yemektarifiapp/MainPage/Card/Card-For-Content.dart';
import 'package:yemektarifiapp/MainPage/Topbar.dart';

class MainPageUser extends StatefulWidget {
  @override
  State<MainPageUser> createState() => _MainPageUserState();
}

class _MainPageUserState extends State<MainPageUser> {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: const [
              //topbar
              Topbar(),
              SizedBox(height: 25),
              //body
              CardForContent(),
              CardForContent(),
              CardForContent(),
              CardForContent(),
              CardForContent(),
            ],
          ),
        ),
      ),
    );
  }
}
