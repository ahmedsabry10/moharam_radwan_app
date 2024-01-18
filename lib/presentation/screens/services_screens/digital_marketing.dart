import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:moharam_radwan/local/services_controller.dart';
import 'package:moharam_radwan/main.dart';
import 'package:moharam_radwan/presentation/widget/services_widget/question_widgets.dart';
import 'package:moharam_radwan/presentation/widget/text_widget.dart';

import '../../../config/shared/fixed_grid.dart';

import '../../widget/services_widget/distinguishes_widget.dart';

class DigitalMarketing extends StatelessWidget {
  DigitalMarketing({super.key});

  ServicesController servicesController=Get.put(ServicesController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'services5'.tr
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ClipRRect(
                child: Image.network(
                  'https://moharamradwan.com/wp-content/uploads/2023/12/Fichier-1-2.png',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),

              SizedBox(
                height: 30.0,
              ),
              CenterHeaderText(text: "services5".tr),
              const SizedBox(
                height: 10,
              ),
              BigContentText(text: "digital_marketing_content".tr),

              const SizedBox(
                height: 30,
              ),
              CenterHeaderText(text: "distinguishes".tr),
              const SizedBox(
                height: 15,
              ),

              CarouselSlider.builder(

                options: CarouselOptions(
                  height: 250,
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
                    title:getTranslatedString( servicesController.digitalDistinguishesTitle[index]),
                    content:getTranslatedString( servicesController.digitalDistinguishesContent[index]) ,
                  );
                }, itemCount: servicesController.digitalDistinguishesContent.length,
              ),


              SizedBox(
                height: 20.0,
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child:

                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0 ),
                  child: Image.network(

                    'https://moharamradwan.com/wp-content/uploads/2023/12/marketing-ideas-share-research-planning-concept-scaled.jpg',

                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.fill,
                  ),
                ),


              ),

              SizedBox(
                height: 20.0,
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
                    title: getTranslatedString(servicesController.digitalMaintenanceTitle[index]) ,
                    content:getTranslatedString(servicesController.digitalMaintenanceContent[index]) ,
                  );
                },
                itemCount: servicesController.digitalMaintenanceContent.length,
              ),

              const SizedBox(
                height: 30,
              ),
              CenterHeaderText(text: "numbers_achieved".tr),
              const SizedBox(
                height: 20,
              ),

              ClipRRect(
                child: Image.network(
                  'https://moharamradwan.com/wp-content/uploads/2023/12/Comparison-results-before-and-after-precision-marketing.png',
                  width: double.infinity,
                  height: 250,
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
                          CenterHeaderText(text: servicesController.digitalNumTitle[index]),
                          ContentText(text: servicesController.digitalNumContent[index]),
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
                  height: 250,
                  crossAxisCount: 1,
                ),
                itemBuilder:  (_, index) {
                  return QuestionsWidget(
                    question: servicesController.questionsDigital[index],
                    answer: servicesController.answersDigital[index],
                  );
                },
                itemCount: servicesController.answersDigital.length,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
