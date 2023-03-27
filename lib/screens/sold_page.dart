import 'package:black_apk/screens/search_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home_screen.dart';
import 'my_profile.dart';

class soldPage extends StatefulWidget {
  const soldPage({super.key});

  @override
  State<soldPage> createState() => _soldPageState();
}

class _soldPageState extends State<soldPage> {
  var mainColor = const Color.fromARGB(255, 255, 130, 0);
  var secColor = const Color.fromARGB(255, 247, 240, 109);
  var bgroundColor = const Color.fromARGB(255, 17, 17, 17);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgroundColor,
        body: Center(
          child: Text('MY SOLD ',
              style: GoogleFonts.robotoCondensed(
                color: secColor,
                fontWeight: FontWeight.w100,
                fontSize: 25,
              )),
        ));
  }
}
