import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:moharam_radwan/local/services_controller.dart';
import 'package:moharam_radwan/presentation/widget/services_widget/question_widgets.dart';
import 'package:moharam_radwan/presentation/widget/text_widget.dart';

import '../../../config/shared/fixed_grid.dart';

import '../../widget/services_widget/distinguishes_widget.dart';

class MediaProduction extends StatelessWidget {
  MediaProduction({super.key});

  ServicesController servicesController=Get.put(ServicesController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'services9'.tr
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
                  'https://moharamradwan.com/wp-content/uploads/2023/12/image-removebg-preview-2-1.png',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),

              SizedBox(
                height: 30.0,
              ),
              CenterHeaderText(text: "media_production".tr),
              const SizedBox(
                height: 10,
              ),
              BigContentText(text: "media_production_content".tr),

              const SizedBox(
                height: 30,
              ),
              CenterHeaderText(text: "distinguishes".tr),
              const SizedBox(
                height: 15,
              ),

              CarouselSlider.builder(

                options: CarouselOptions(
                  height: 230,
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
                    title: servicesController.mediaDistinguishesTitle[index],
                    content: servicesController.mediaDistinguishesContent[index],
                  );
                }, itemCount: servicesController.mediaDistinguishesContent.length,
              ),


              SizedBox(
                height: 30.0,
              ),
              ///from_our_work


              CenterHeaderText(text: "excel_thanks".tr),
              const SizedBox(
                height: 15,
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
                  return DistinguishesWidget(
                    imageUrl: servicesController.mediaMaintenanceIcons[index],
                    title: servicesController.mediaMaintenanceTitle[index],
                    content: servicesController.mediaMaintenanceContent[index],
                  );
                },
                itemCount: servicesController.mediaMaintenanceContent.length,
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
                    question: servicesController.questionsMedia[index],
                    answer: servicesController.answersMedia[index],
                  );
                },
                itemCount: servicesController.answersMedia.length,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
