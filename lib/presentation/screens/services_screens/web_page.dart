import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:moharam_radwan/config/theme/app_colors.dart';
import 'package:moharam_radwan/local/services_controller.dart';
import 'package:moharam_radwan/presentation/widget/services_widget/question_widgets.dart';
import 'package:moharam_radwan/presentation/widget/text_widget.dart';

import '../../../config/shared/fixed_grid.dart';
import '../../../main.dart';
import '../../widget/animated_logo.dart';
import '../../widget/carousel_item.dart';
import '../../widget/opinion_widget.dart';
import '../../widget/services_widget/distinguishes_widget.dart';

class WebPage extends StatelessWidget {
  WebPage({super.key});

  ServicesController servicesController=Get.put(ServicesController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'services2'.tr
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ClipRect(
              child: Image.network(
                'https://moharamradwan.com/wp-content/uploads/2023/12/Plan-de-travail-1.png',
                width: double.infinity,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [



                  SizedBox(
                    height: 15.0,
                  ),
                  CenterHeaderText(text: "web_development".tr),
                  const SizedBox(
                    height: 10,
                  ),
                  BigContentText(text: "web_development_content".tr),
                  const SizedBox(
                    height: 20,
                  ),

                  CenterHeaderText(text: "distinguishes".tr),
                  const SizedBox(
                    height: 15,
                  ),

                  CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 220,
                      enlargeCenterPage: false,
                      autoPlay: true,
                      aspectRatio: 15 / 14,
                      autoPlayCurve: Curves.linear,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                      const Duration(milliseconds: 500),
                      viewportFraction: 1.00,
                    ),
                    itemBuilder: (BuildContext context, int index, int realIndex) {
                      return DistinguishesWidget(
                        imageUrl: servicesController.distinguishesIcons[index],
                        title:getTranslatedString( servicesController.webDistinguishesTitle[index],),
                        content:getTranslatedString(servicesController.webDistinguishesContent[index] ));
                    }, itemCount: servicesController.distinguishesIcons.length,
                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                  CenterHeaderText(text: "maintenance_services".tr) ,
                  SizedBox(
                    height: 10.0,
                  ),




                  ClipRect(
                    child: Image.network(
                      'https://moharamradwan.com/wp-content/uploads/2023/12/3215199-1-scaled.jpg',
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.fill,
                    ),
                  ),

                  SizedBox(
                    height: 10.0,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 2,
                      height: 210,
                      crossAxisCount: 1,
                    ),
                    itemBuilder:  (_, index) {
                      return DistinguishesWidget(
                        imageUrl: servicesController.maintenanceIcons[index],
                        title:getTranslatedString(servicesController.webMaintenanceTitle[index]),
                        content:getTranslatedString(servicesController.webMaintenanceContent[index]),
                      );
                    },
                    itemCount: servicesController.webMaintenanceContent.length,
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  CenterHeaderText(text: "applications_we_designed".tr),
                  const SizedBox(
                    height: 20,
                  ),

                  ClipRect(
                    child: Image.network(
                      'https://moharamradwan.com/wp-content/uploads/2023/12/creative-agency-landing-page-sketch-1.png',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 2,
                      height: 100,
                      crossAxisCount: 3,
                    ),
                    itemBuilder:  (_, index) {
                      return Card(
                        color: Colors.white,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CenterHeaderText(text: servicesController.numWebTitle[index]),
                              ContentText(text: servicesController.numWebContent[index]),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: servicesController.numContent.length,
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  CenterHeaderText(text: "asked_questions".tr),
                  const SizedBox(
                    height: 20,
                  ),

                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 2,
                      height: 230,
                      crossAxisCount: 1,
                    ),
                    itemBuilder:  (_, index) {
                      return QuestionsWidget(
                        question: servicesController.webQuestionsApp[index],
                        answer: servicesController.webAnswersApp[index],
                      );
                    },
                    itemCount: servicesController.webQuestionsApp.length,
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
