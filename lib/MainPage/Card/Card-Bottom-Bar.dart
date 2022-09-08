import 'package:flutter/material.dart';
import 'package:yemektarifiapp/MainPage/Card/Card-Bottom-Bar-Comment-Button.dart';
import 'package:yemektarifiapp/MainPage/Card/Card-Bottom-Bar-Details-Button.dart';
import 'package:yemektarifiapp/MainPage/Card/Like-Button-Card-Bottom-Bar.dart';

class CardBottomBar extends StatefulWidget {
  const CardBottomBar({Key? key}) : super(key: key);

  @override
  State<CardBottomBar> createState() => _CardBottomBarState();
}

class _CardBottomBarState extends State<CardBottomBar> {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return Container(
      width: widthScreen,
      height: 50,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Row(
        children: const [
          //like
          CardBottomBarLikeButton(),
          Spacer(),
          //comment
          CardBottomBarCommentButton(),
          Spacer(),
          //fav
          CardBottomBarDetailsButton(),
        ],
      ),
    );
  }
}
