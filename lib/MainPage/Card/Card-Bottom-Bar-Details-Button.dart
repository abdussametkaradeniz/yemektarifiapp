import 'package:flutter/material.dart';

class CardBottomBarDetailsButton extends StatefulWidget {
  const CardBottomBarDetailsButton({Key? key}) : super(key: key);

  @override
  State<CardBottomBarDetailsButton> createState() =>
      _CardBottomBarDetailsButtonState();
}

class _CardBottomBarDetailsButtonState
    extends State<CardBottomBarDetailsButton> {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Flexible(
          child: ElevatedButton.icon(
            icon: const Icon(
              Icons.details,
              size: 30.0,
            ),
            label: Text("Details"),
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(9),
                ),
              ),
              minimumSize: const Size.fromWidth(50),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
