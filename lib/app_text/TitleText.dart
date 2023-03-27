import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  TitleText({
    Key? key,
    this.size = 30,
    required this.text,
    this.color = const Color.fromARGB(255, 255, 130, 0),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
