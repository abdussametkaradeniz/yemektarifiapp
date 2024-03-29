import 'package:flutter/material.dart';
import 'package:yemektarifiapp/MainPage/MainPageUser.dart';
import 'package:yemektarifiapp/Signin/Signin.dart';
import 'Login/LoginPage.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MainPageUser(),
    );
  }
}
