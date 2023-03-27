// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:black_apk/screens/search_page.dart';
import 'package:black_apk/screens/sold_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'my_profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var mainColor = const Color.fromARGB(255, 255, 130, 0);
  var secColor = const Color.fromARGB(255, 247, 240, 109);
  var bgroundColor = const Color.fromARGB(255, 17, 17, 17);

  List<Widget> pages = [
    HomeScreen(),
    searchPage(),
    soldPage(),
    profilePage(),
  ];
  int sIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgroundColor,
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                margin: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                    color: secColor, borderRadius: BorderRadius.circular(25)),
                padding: EdgeInsets.all(20),
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
                                    color: Color.fromARGB(255, 80, 45, 4),
                                    fontWeight: FontWeight.w200,
                                    fontSize: 20,
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Shop Name',
                                  style: GoogleFonts.robotoCondensed(
                                    color: Color.fromARGB(255, 80, 45, 4),
                                    fontWeight: FontWeight.w200,
                                    fontSize: 20,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text('15',
                                style: GoogleFonts.robotoCondensed(
                                  color: Color.fromARGB(255, 80, 45, 4),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                )),
                            Text('Products',
                                style: GoogleFonts.robotoCondensed(
                                  color: Color.fromARGB(255, 80, 45, 4),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                )),
                          ],
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Column(
                          children: [
                            Text('15',
                                style: GoogleFonts.robotoCondensed(
                                  color: Color.fromARGB(255, 80, 45, 4),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                )),
                            Text('Saves',
                                style: GoogleFonts.robotoCondensed(
                                  color: Color.fromARGB(255, 80, 45, 4),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                )),
                          ],
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Column(
                          children: [
                            Text('15',
                                style: GoogleFonts.robotoCondensed(
                                  color: Color.fromARGB(255, 80, 45, 4),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                )),
                            Text('Sold',
                                style: GoogleFonts.robotoCondensed(
                                  color: Color.fromARGB(255, 80, 45, 4),
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
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: 360,
                  child: Text(
                      'Control your shop as you like with Shoffing Admin App ',
                      style: GoogleFonts.robotoCondensed(
                        color: secColor,
                        fontWeight: FontWeight.w100,
                        fontSize: 25,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Tools',
                      style: GoogleFonts.robotoCondensed(
                        color: mainColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(20)),
                      height: 125,
                      width: 125,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsetsDirectional.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: secColor,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              iconSize: 65,
                              icon: Icon(Icons.add_circle),
                              color: mainColor,
                            ),
                          ),
                          Text('Add',
                              style: GoogleFonts.robotoCondensed(
                                color: secColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ))
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(20)),
                      height: 125,
                      width: 125,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsetsDirectional.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: secColor,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              iconSize: 65,
                              icon: Icon(Icons.edit_outlined),
                              color: mainColor,
                            ),
                          ),
                          Text('Edit',
                              style: GoogleFonts.robotoCondensed(
                                color: secColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ))
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(20)),
                      height: 125,
                      width: 125,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsetsDirectional.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: secColor,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              iconSize: 65,
                              icon: Icon(Icons.delete_forever_outlined),
                              color: mainColor,
                            ),
                          ),
                          Text('Delete',
                              style: GoogleFonts.robotoCondensed(
                                color: secColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ))
                        ],
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Contect US',
                      style: GoogleFonts.robotoCondensed(
                        color: mainColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: 360,
                  child: Text('@Shoffing 0541100629/0660000038',
                      style: GoogleFonts.robotoCondensed(
                        color: secColor,
                        fontWeight: FontWeight.w100,
                        fontSize: 25,
                      )),
                ),
              ],
            ),
          ],
        )));
  }
}
