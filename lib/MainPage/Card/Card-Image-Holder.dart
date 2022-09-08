import 'package:flutter/material.dart';

class ImageHolder extends StatefulWidget {
  const ImageHolder({Key? key}) : super(key: key);

  @override
  State<ImageHolder> createState() => _ImageHolderState();
}

class _ImageHolderState extends State<ImageHolder> {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        width: widthScreen,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/MainPage/Card/pide.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
