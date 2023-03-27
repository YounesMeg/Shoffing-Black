import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('Password reset link send,check your Email'),
            );
          });
    } on FirebaseAuthException catch (e) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 17, 17),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 17, 17),
        elevation: 0,

        //foregroundColor: mainColor,
        title: Image.asset(
          'images/shofiing.png',
          width: 100,
          height: 100,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Enter your Email and we will send you a password reset link',
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoCondensed(
                color: Colors.white,
                fontSize: 23,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  maxLength: 20,
                  controller: _emailController,
                  decoration: const InputDecoration(
                      counterText: "",
                      border: InputBorder.none,
                      hintText: 'Email',
                      hintStyle: TextStyle()),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MaterialButton(
            onPressed: passwordReset,
            color: const Color.fromARGB(255, 255, 130, 0),
            child: Text(
              'Reset Password',
              style: GoogleFonts.robotoCondensed(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
