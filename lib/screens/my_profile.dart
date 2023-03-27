// ignore_for_file: camel_case_types

import 'package:black_apk/screens/search_page.dart';
import 'package:black_apk/screens/sold_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Home_screen.dart';
import 'my_profile.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePagestate();
}

class _profilePagestate extends State<profilePage> {
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
  //int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  margin: const EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                      color: secColor, borderRadius: BorderRadius.circular(25)),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(20)),
                            height: 100,
                            width: 100,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text('User Name',
                                    style: GoogleFonts.robotoCondensed(
                                      color:
                                          const Color.fromARGB(255, 80, 45, 4),
                                      fontWeight: FontWeight.w200,
                                      fontSize: 20,
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text('Shop Name',
                                    style: GoogleFonts.robotoCondensed(
                                      color:
                                          const Color.fromARGB(255, 80, 45, 4),
                                      fontWeight: FontWeight.w200,
                                      fontSize: 20,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text('15',
                                  style: GoogleFonts.robotoCondensed(
                                    color: const Color.fromARGB(255, 80, 45, 4),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  )),
                              Text('Products',
                                  style: GoogleFonts.robotoCondensed(
                                    color: const Color.fromARGB(255, 80, 45, 4),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                  )),
                            ],
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          Column(
                            children: [
                              Text('15',
                                  style: GoogleFonts.robotoCondensed(
                                    color: const Color.fromARGB(255, 80, 45, 4),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  )),
                              Text('Saves',
                                  style: GoogleFonts.robotoCondensed(
                                    color: const Color.fromARGB(255, 80, 45, 4),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                  )),
                            ],
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          Column(
                            children: [
                              Text('15',
                                  style: GoogleFonts.robotoCondensed(
                                    color: const Color.fromARGB(255, 80, 45, 4),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  )),
                              Text('Sold',
                                  style: GoogleFonts.robotoCondensed(
                                    color: const Color.fromARGB(255, 80, 45, 4),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                  )),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                /////
              ),
              const SizedBox(height: 15),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(5, (index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: secColor,
                                    borderRadius: BorderRadius.circular(50)),
                                height: 100,
                                width: 100,
                              ),
                            );
                          })),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 4.0,
                        mainAxisSpacing: 4.0,
                        mainAxisExtent: 250,
                      ),
                      itemCount: 15,
                      itemBuilder: (_, index) => Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: secColor),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
