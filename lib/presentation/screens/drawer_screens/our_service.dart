import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:moharam_radwan/local/services_controller.dart';
import 'package:moharam_radwan/presentation/widget/animated_logo.dart';
import 'package:moharam_radwan/presentation/widget/services_item.dart';

import '../../../config/shared/fixed_grid.dart';

class OurServices extends StatelessWidget {
  OurServices({super.key});
  ServicesController servicesController=Get.put(ServicesController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "our_services".tr
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            AnimatedLogo(),

            Center(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                    crossAxisCount: 3,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    height: 130),
                itemBuilder: (_, index) {
                  return buildServicesItem(context,
                    index: index,
                    title: servicesController.names[index],
                    icons: servicesController.icons[index],
                    //screens: screens
                  );
                },
                itemCount:servicesController.icons.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
