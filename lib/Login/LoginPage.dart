// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yemektarifiapp/Signin/Signin.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 90,
              ),
              Image.asset(
                "lib/Login/LoginImages/hamburger-soda.png",
                height: 100,
              ),
              SizedBox(
                height: 25,
              ),
              //giriş yazısı
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        width: widthScreen,
                        child: Center(
                          child: Text(
                            "Hello Again!",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 52,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        width: widthScreen,
                        child: Center(
                          child: Text(
                            "Welcome back, you've been missed!",
                            style: GoogleFonts.asap(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              //id giriş kısmı
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        width: widthScreen,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Username",
                            prefixIcon: const Icon(Icons.person),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              //şifre giriş kısmım
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        width: widthScreen,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            prefixIcon: const Icon(Icons.password_rounded),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              //login butonu
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[400],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              //signIn yazısı
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: GoogleFonts.asap(
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Text(
                      " Register now",
                      style: GoogleFonts.asap(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
