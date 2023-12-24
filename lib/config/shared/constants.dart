import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../theme/app_colors.dart';


class Constants {
  static void showErrorDialog(
      {required BuildContext context, required String msg}) {
    showDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
          title: Text(
            msg,
            style: const TextStyle(color: Colors.black, fontSize: 16),
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  textStyle: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                child: const Text("Ok"))
          ],
        ));
  }

  static void showToast({
    required String msg,
    Color? color,
    ToastGravity? gravity,
  }) {
    Fluttertoast.showToast(
        toastLength: Toast.LENGTH_LONG,
        backgroundColor: color ?? AppColors.primary,
        gravity: gravity ?? ToastGravity.BOTTOM,
        msg: msg);
  }



}

class ValidationUtils{
  static bool isValidEmail (String email ){

    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }
}
