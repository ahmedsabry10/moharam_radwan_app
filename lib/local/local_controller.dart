import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';

class MyLocaleController extends GetxController{
  Locale initialLang=sharedPref!.getString("lang")=='ar' ?Locale("ar"):Locale("en");
  void changeLang(String codeLang){
    sharedPref!.setString("lang", codeLang);
    Locale locale =Locale(codeLang);
    Get.updateLocale(locale);
  }
}