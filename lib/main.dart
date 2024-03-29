import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/contact_us_screen.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/dashboard_screen.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/dashboard_screen/best_offer/add_best_offer_screen.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/dashboard_screen/best_offer/manage_best_offers.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/dashboard_screen/packages/add_new_packages.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/dashboard_screen/packages/manage_packages.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/our_service.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/who_are_we.dart';
import 'package:moharam_radwan/presentation/screens/home_page.dart';
import 'package:moharam_radwan/presentation/screens/services_screens/digital_marketing.dart';
import 'package:moharam_radwan/presentation/screens/services_screens/engine_optmization.dart';
import 'package:moharam_radwan/presentation/screens/services_screens/graphic_design.dart';
import 'package:moharam_radwan/presentation/screens/services_screens/media_production.dart';
import 'package:moharam_radwan/presentation/screens/services_screens/mobile_app.dart';
import 'package:moharam_radwan/presentation/screens/services_screens/online_store.dart';
import 'package:moharam_radwan/presentation/screens/services_screens/web_page.dart';
import 'package:moharam_radwan/presentation/screens/splash_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'config/theme/app_theme.dart';
import 'firebase_options.dart';
import 'local/local.dart';
import 'local/local_controller.dart';
import 'local/services_controller.dart';



SharedPreferences? sharedPref;

String getTranslatedString(String key) {
  return key.tr;
}
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        GetPage(name: "/engine_optimization", page: ()=>EngineOptimization()),
        GetPage(name: "/online_store", page: ()=>OnlineStorePage()),
        GetPage(name: "/digital_marketing", page: ()=>DigitalMarketing()),
        GetPage(name: "/graphic_design", page: ()=>GraphicDesign()),
        GetPage(name: "/media_production", page: ()=>MediaProduction()),
        GetPage(name: "/dashboard", page: ()=>DashBoardScreen()),
        GetPage(name: "/manage_best_offers", page: ()=>ManageBestOffers()),
        GetPage(name: "/add_new_best_offer", page: ()=>AddNewOffer()),
        GetPage(name: "/manage_best_packages", page: ()=>ManagePackages()),
        GetPage(name: "/add_new_packages", page: ()=>AddNewPackages()),

      ],
      debugShowCheckedModeBanner: false,

    );
  }
}

