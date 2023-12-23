import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:moharam_radwan/config/theme/app_colors.dart';
import 'package:moharam_radwan/local/services_controller.dart';
import 'package:moharam_radwan/presentation/widget/services_widget/question_widgets.dart';
import 'package:moharam_radwan/presentation/widget/text_widget.dart';

import '../../../config/shared/fixed_grid.dart';
import '../../widget/animated_logo.dart';
import '../../widget/carousel_item.dart';
import '../../widget/opinion_widget.dart';
import '../../widget/services_widget/distinguishes_widget.dart';

class EngineOptimization extends StatelessWidget {
  EngineOptimization({super.key});

  ServicesController servicesController=Get.put(ServicesController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'services3'.tr
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ClipRect(
              child: Image.network(
                "https://moharamradwan.com/wp-content/uploads/2023/12/Mesa-de-trabajo-1.png",
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
                  HeaderText(text: "engine_optimization_title".tr, color: AppColors.primary,),
                  const SizedBox(
                    height: 10,
                  ),
                  BigContentText(text: "engine_optimization_content1".tr),
                  const SizedBox(
                    height: 20,
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
                        title: servicesController.engOptDistinguishesTitle[index],
                        content: servicesController.engOptDistinguishesContent[index],
                      );
                    }, itemCount: servicesController.engOptDistinguishesTitle.length,
                  ),



                  const SizedBox(
                    height: 30,
                  ),
                  CenterHeaderText(text: "from_our_work".tr),
                  const SizedBox(
                    height: 20,
                  ),

                  ClipRect(
                    child: Image.network(
                      'https://moharamradwan.com/wp-content/uploads/2023/12/traffic-pre-post-rebrand.png',
                      width: double.infinity,
                      height: 230,
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
                              CenterHeaderText(text: servicesController.numOptTitle[index]),
                              ContentText(text: servicesController.numOptContent[index]),
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
                        question: servicesController.optQuestionsApp[index],
                        answer: servicesController.optAnswersApp[index],
                      );
                    },
                    itemCount: servicesController.optQuestionsApp.length,
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
