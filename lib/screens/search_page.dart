import 'package:black_apk/screens/sold_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home_screen.dart';
import 'my_profile.dart';

class searchPage extends StatefulWidget {
  const searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  var mainColor = const Color.fromARGB(255, 255, 130, 0);
  var secColor = const Color.fromARGB(255, 247, 240, 109);
  var bgroundColor = const Color.fromARGB(255, 17, 17, 17);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgroundColor,
        body: Center(
          child: Text('RESEARCHE ',
              style: GoogleFonts.robotoCondensed(
                color: secColor,
                fontWeight: FontWeight.w100,
                fontSize: 25,
              )),
        ));
  }
}
