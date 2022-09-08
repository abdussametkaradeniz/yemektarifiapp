import 'package:flutter/material.dart';

class CardBottomBarLikeButton extends StatefulWidget {
  const CardBottomBarLikeButton({Key? key}) : super(key: key);

  @override
  State<CardBottomBarLikeButton> createState() =>
      _CardBottomBarLikeButtonState();
}

class _CardBottomBarLikeButtonState extends State<CardBottomBarLikeButton> {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Container(
            // ignore: sort_child_properties_last
            child: Row(
              children: [
                ElevatedButton.icon(
                  icon: const Icon(
                    Icons.favorite,
                    size: 30.0,
                  ),
                  label: Text("Fav"),
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(9),
                      ),
                    ),
                    minimumSize: const Size.fromWidth(50),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
