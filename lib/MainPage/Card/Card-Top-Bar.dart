import 'package:flutter/material.dart';

class CardTopBar extends StatefulWidget {
  const CardTopBar({Key? key}) : super(key: key);

  @override
  State<CardTopBar> createState() => _CardTopBarState();
}

class _CardTopBarState extends State<CardTopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        //card top
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 1,
              bottom: 5,
            ),
            child: Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/MainPage/man.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Spacer(),
          Container(
            width: 50,
            height: 55,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
              ),
            ),
            child: const Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
