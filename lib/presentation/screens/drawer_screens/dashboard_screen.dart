import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:moharam_radwan/config/theme/app_colors.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/dashboard_screen/best_offer/manage_best_offers.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/dashboard_screen/packages/manage_packages.dart';
import 'package:moharam_radwan/presentation/widget/animated_logo.dart';
import 'package:moharam_radwan/presentation/widget/text_widget.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "dashboard".tr
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              FontAwesomeIcons.dashboard
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const AnimatedLogo(),
            HeaderText(text: '${"dashboard".tr} :', color: AppColors.primary),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  InkWell(
                      onTap:(){
                        Get.to(()=>ManageBestOffers());
                      },
                      child: Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(child: HeaderText(text: 'control_best_offers'.tr, color: Colors.white)))),
                  SizedBox(
                    height: 10.0,
                  ),
                  InkWell(
                      onTap:(){
                        Get.to(()=>ManagePackages());
                      },
                      child: Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(child: HeaderText(text: 'control_best_packages'.tr, color: Colors.white)))),




                ],
              ),
            )




          ],
        ),
      ),
    );
  }
}
