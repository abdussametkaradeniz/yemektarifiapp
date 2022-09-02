import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CardDesign extends StatefulWidget {
  const CardDesign({Key? key}) : super(key: key);

  @override
  State<CardDesign> createState() => _CardDesignState();
}

class _CardDesignState extends State<CardDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 100,
              top: MediaQuery.of(context).size.height / 50,
              right: MediaQuery.of(context).size.width / 100,
            ),
            child: Column(
              children: [
                //fotoğraf alanı
                Container(
                  width: (MediaQuery.of(context).size.width),
                  height: (MediaQuery.of(context).size.width) / 1.45,
                  decoration: BoxDecoration(
                    color: Colors.amber[400],
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
