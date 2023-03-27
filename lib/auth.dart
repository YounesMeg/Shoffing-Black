import 'package:black_apk/screens/Home_screen.dart';
import 'package:black_apk/screens/login_screen.dart';
import 'package:black_apk/screens/navba.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return const navBa();
          } else {
            return const LoginScreen();
          }
        }),
      ),
    );
  }
}
