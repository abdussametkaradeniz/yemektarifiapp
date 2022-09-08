import 'package:flutter/material.dart';
import 'package:yemektarifiapp/MainPage/Card/Card-Bottom-Bar.dart';
import 'package:yemektarifiapp/MainPage/Card/Card-Image-Holder.dart';
import 'package:yemektarifiapp/MainPage/Card/Card-Top-Bar.dart';

class CardForContent extends StatefulWidget {
  const CardForContent({Key? key}) : super(key: key);

  @override
  State<CardForContent> createState() => _CardForContentState();
}

class _CardForContentState extends State<CardForContent> {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          height: heightScreen / 1.5,
          width: widthScreen,
          margin: EdgeInsets.only(
            left: widthScreen * 0.05,
            right: widthScreen * 0.05,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 2.0,
              color: Colors.black,
            ),
          ),
          child: Column(
            children: [
              CardTopBar(),
              ImageHolder(),
              CardBottomBar(),
            ],
          ),
        ),
        SizedBox(height: 25),
      ],
    );
  }
}
