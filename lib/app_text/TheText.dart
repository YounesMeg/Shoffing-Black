import 'package:flutter/material.dart';

class TheText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  TheText(
      {Key? key,
      this.size = 16,
      required this.text,
      this.color = const Color.fromARGB(255, 247, 240, 109)})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
