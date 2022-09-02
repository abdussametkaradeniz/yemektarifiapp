// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yemektarifiapp/LikeAndAddBar.dart';
import 'CardDesign.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yemek Tarifleri"),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 243, 91, 91),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 100,
                top: MediaQuery.of(context).size.height / 50,
                right: MediaQuery.of(context).size.width / 100,
              ),
              child: Container(
                width: (MediaQuery.of(context).size.width),
                height: (MediaQuery.of(context).size.width) / 1.09,
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 290,
                      decoration: BoxDecoration(color: Colors.purple),
                      child: CardDesign(),
                    ),
                    Container(
                      child: const LikeAndAddBar(),
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
