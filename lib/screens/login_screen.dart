// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'forgot_password_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  var mainColor = const Color.fromARGB(255, 255, 130, 0);
  var secColor = const Color.fromARGB(255, 247, 240, 109);
  var bgroundColor = const Color.fromARGB(255, 17, 17, 17);
  bool pawssordv = true;

  Future signIn() async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: CircularProgressIndicator(
            color: mainColor,
          ),
        );
      },
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
      Navigator.pop(context);
      // ignore: use_build_context_synchronously
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'user-not-found') {
        worngEmailMassege();
      } else if (e.code == 'wrong-password') {
        worngPasswordMassege();
      } else {
        worngEmailMassege();
      }
    }
  }

  void worngEmailMassege() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('incorrect Email'),
          );
        });
  }

  void worngPasswordMassege() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('incorrect Password'),
          );
        });
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgroundColor,
      appBar: AppBar(
        shadowColor: bgroundColor,
        backgroundColor: bgroundColor,

        //foregroundColor: mainColor,
        title: Image.asset(
          'images/shofiing.png',
          width: 100,
          height: 100,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              //Image
              Image.asset(
                'images/ylw.jpg',
                height: 300,
                width: 300,
              ),
              SizedBox(height: 20),
              //Image

              //title
              Text(
                'Login',
                style: GoogleFonts.robotoCondensed(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //title
              SizedBox(
                height: 30,
              ),

              //Subtitle
              //Email Textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      maxLength: 60,
                      controller: _emailController,
                      decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                          hintText: 'Email',
                          hintStyle: TextStyle()),
                    ),
                  ),
                ),
              ),

              //Email Textfield
              SizedBox(
                height: 15,
              ),
              //password Textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      maxLength: 30,
                      controller: _passwordController,
                      obscureText: pawssordv,
                      decoration: InputDecoration(
                          counterText: "",
                          suffixIcon: IconButton(
                              onPressed: (() => setState(() {
                                    pawssordv = !pawssordv;
                                  })),
                              icon: Icon(
                                  pawssordv
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.grey)),
                          border: InputBorder.none,
                          hintText: 'Password'),
                    ),
                  ),
                ),
              ),
              //password Textfield
              SizedBox(
                height: 20,
              ),
              //sign in button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: signIn,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                        child: Text(
                      'LOGIN',
                      style: GoogleFonts.robotoCondensed(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //sign in button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forgot your password ?  ',
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ForgotPasswordPage();
                      }));
                    },
                    child: Text(
                      'Click here',
                      style: GoogleFonts.robotoCondensed(
                        color: secColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
