import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/contact_us_screen.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/our_service.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/who_are_we.dart';
import 'package:moharam_radwan/presentation/screens/home_page.dart';
import 'package:moharam_radwan/presentation/screens/services_screens/mobile_app.dart';
import 'package:moharam_radwan/presentation/screens/services_screens/web_page.dart';
import 'package:moharam_radwan/presentation/screens/splash_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'config/theme/app_theme.dart';
import 'local/local.dart';
import 'local/local_controller.dart';



SharedPreferences? sharedPref;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref= await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyLocaleController controller= Get.put(MyLocaleController());
    return GetMaterialApp(
      title: "1".tr,
      translations: MyLocale(),
      locale: controller.initialLang,
      theme:appTheme(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: ()=>SplashPage()),
        GetPage(name: "/homePage", page: ()=>Home()),
        GetPage(name: "/who_are_we", page: ()=>WhoAreWe()),
        GetPage(name: "/contact_us", page: ()=>ContactUsScreen()),
        GetPage(name: "/our_services", page: ()=>OurServices()),
        GetPage(name: "/mobile_app", page: ()=>MobileApplication()),
        GetPage(name: "/web_page", page: ()=>WebPage()),


      ],
      debugShowCheckedModeBanner: false,

    );
  }
}

