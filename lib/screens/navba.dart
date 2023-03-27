import 'package:black_apk/screens/search_page.dart';
import 'package:black_apk/screens/sold_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Home_screen.dart';
import 'my_profile.dart';

class navBa extends StatefulWidget {
  const navBa({super.key});

  @override
  State<navBa> createState() => _navBaState();
}

class _navBaState extends State<navBa> {
  var mainColor = const Color.fromARGB(255, 255, 130, 0);
  var secColor = const Color.fromARGB(255, 247, 240, 109);
  var bgroundColor = const Color.fromARGB(255, 17, 17, 17);

  List<Widget> pages = [
    const HomeScreen(),
    const searchPage(),
    const soldPage(),
    const profilePage(),
  ];
  int sIndex = 0;
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: GNav(
            selectedIndex: sIndex,
            onTabChange: (value) {
              setState(() {
                sIndex = value;
              });
            },
            //rippleColor: secColor,
            //hoverColor: secColor,
            tabBackgroundColor: Colors.white,
            gap: 8,
            backgroundColor: bgroundColor,
            tabBorderRadius: 100,
            padding: const EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
                iconActiveColor: mainColor,
                iconColor: secColor,
                textColor: mainColor,
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
                iconActiveColor: mainColor,
                iconColor: secColor,
                textColor: mainColor,
              ),
              GButton(
                icon: Icons.style_rounded,
                text: 'Sold',
                iconActiveColor: mainColor,
                iconColor: secColor,
                textColor: mainColor,
              ),
              GButton(
                icon: Icons.person_pin,
                text: 'Profile',
                iconActiveColor: mainColor,
                iconColor: secColor,
                textColor: mainColor,
              ),
            ]),
        backgroundColor: bgroundColor,
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: signUserOut,
              icon: const Icon(Icons.logout),
            )
          ],
          shadowColor: bgroundColor,
          backgroundColor: bgroundColor,

          //foregroundColor: mainColor,

          title: Row(
            children: [
              Image.asset(
                'images/ylw.jpg',
                height: 45,
                width: 45,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'images/shofiing.png',
                width: 100,
                height: 100,
              )
            ],
          ),
          centerTitle: true,
        ),
        body: pages.elementAt(sIndex));
  }
}
