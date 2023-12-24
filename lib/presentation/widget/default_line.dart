import 'package:flutter/material.dart';

class DefaultLine extends StatelessWidget {
   DefaultLine({Key? key ,required this.color}) : super(key: key);
  Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: color,
      ),
    );
  }
}
