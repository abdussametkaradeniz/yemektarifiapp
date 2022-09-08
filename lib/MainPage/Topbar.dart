import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Topbar extends StatelessWidget {
  const Topbar({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 197, 194, 204),
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
                  style: GoogleFonts.asap(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.message),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 197, 194, 204),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
