import 'package:flutter/material.dart';
import 'package:moharam_radwan/config/theme/app_colors.dart';

class HeaderText extends StatelessWidget {
  String text;
  Color color;
  HeaderText({super.key, required this.text,required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,

        fontSize: 20.0,
        fontWeight: FontWeight.bold
      ),
    );
  }
}

class CenterHeaderText extends StatelessWidget {
  String text;
  CenterHeaderText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: AppColors.primary,

          fontSize: 20.0,
          fontWeight: FontWeight.bold
      ),
    );
  }
}


class BigContentText extends StatelessWidget {
  String text;
  BigContentText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontWeight: FontWeight.bold
      ),
    );
  }
}


class ContentText extends StatelessWidget {
  String text;
  ContentText({super.key,required this.text});

  @override
  Widget build(BuildContext context) {

    return Text(
      text,
      style: const TextStyle(
          color: Colors.black,
          fontSize: 15.0,
          fontWeight: FontWeight.bold
      ),
    );
  }
}

