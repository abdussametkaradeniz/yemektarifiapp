// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CardBottomBarCommentButton extends StatefulWidget {
  const CardBottomBarCommentButton({Key? key}) : super(key: key);

  @override
  State<CardBottomBarCommentButton> createState() =>
      _CardBottomBarCommentButtonState();
}

class _CardBottomBarCommentButtonState
    extends State<CardBottomBarCommentButton> {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    return Container(
      // ignore: sort_child_properties_last
      child: Row(
        children: [
          ElevatedButton.icon(
            icon: const Icon(
              Icons.comment,
              size: 30.0,
            ),
            label: Text("Comment"),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                ),
              ),
              minimumSize: const Size.fromWidth(50),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
