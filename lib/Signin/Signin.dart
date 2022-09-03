import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:yemektarifiapp/Login/LoginPage.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> with TickerProviderStateMixin {
  void GoBackLogin() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("SignIn"),
        backgroundColor: Colors.deepPurple[300],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            GoBackLogin();
          },
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Lottie.network(
                "https://assets7.lottiefiles.com/temp/lf20_nXwOJj.json",
                height: 210,
              ),
              SizedBox(
                height: 25,
              ),
              //isim giriş kısmı
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
                            hintText: "Name",
                            prefixIcon: const Icon(Icons.account_circle),
                          ),
                        ),
                      ),
                    ),
                  ),
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
                            hintText: "Surname",
                            prefixIcon: const Icon(Icons.account_circle),
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
              //e mail giriş kısmı
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
                            hintText: "E mail",
                            prefixIcon: const Icon(Icons.email),
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
              //username giriş kısmı
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
                            prefixIcon:
                                const Icon(Icons.supervised_user_circle),
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
                            prefixIcon: const Icon(Icons.lock),
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
                            "Signin",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Alredy member?",
                    style: GoogleFonts.asap(
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      GoBackLogin();
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.asap(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
