import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:moharam_radwan/config/theme/app_colors.dart';
import 'package:moharam_radwan/local/services_controller.dart';
import 'package:moharam_radwan/main.dart';
import 'package:moharam_radwan/presentation/widget/services_widget/question_widgets.dart';
import 'package:moharam_radwan/presentation/widget/text_widget.dart';

import '../../../config/shared/fixed_grid.dart';
import '../../widget/animated_logo.dart';
import '../../widget/carousel_item.dart';
import '../../widget/opinion_widget.dart';
import '../../widget/services_widget/distinguishes_widget.dart';

class MobileApplication extends StatelessWidget {
  MobileApplication({super.key});

  ServicesController servicesController=Get.put(ServicesController());

  List<String> workImage=[
    "https://moharamradwan.com/wp-content/uploads/2023/12/cIO9ZrINnM2DXDagztJXidTaNfwQDBqn9V9jgH6f1BU_plaintext_638375559552919606-1536x1384.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/IMG-20231207-WA0033.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/IMG-20231207-WA0027.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/IMG-20231207-WA0033.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/oVGexadedQO03NwgH_xYv7TVnZUpyBHIDoDK6ygkUOo_plaintext_638375559030015018.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/WhatsApp-Image-2023-12-07-at-15.33.22_8188fccf-1536x1536.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/0PJjjvGezjhmfZB0-iVzL87yNXbzeJEMS9KIfgeHtpc_plaintext_638375560823924016.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/CbcVolCtdIDPjQG_gBb1onm22Qh1ItvX5ajICxoE62k_plaintext_638375560417351579-1536x1536.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/GLoRp42rrOWM_GiqCLRFyzCRullD2EEEt1q-wteu1Jk_plaintext_638375560959036873.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/ti3wqeL_uCUZbaHiQXtCmu2lvdpFQc0JtUL0hXRAy54_plaintext_638375562140791865-1536x1536.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/nGQ63cRu0qyzFI-kHHfzobhAzxtB64dw0E_8m1O3m_U_plaintext_638375561260253137-1536x1536.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'services1'.tr
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ClipRect(
                child: Image.network(
                  'https://moharamradwan.com/wp-content/uploads/2023/12/landing-app-layout-vector.png',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),

              SizedBox(
                height: 30.0,
              ),
              CenterHeaderText(text: "design_services".tr),
              const SizedBox(
                height: 10,
              ),
              BigContentText(text: "design_services_content1".tr),
              const SizedBox(
                height: 20,
              ),


              Row(
                children: [
                  Expanded(
                    child: ClipRect(
                      child: Image.network(
                        'https://moharamradwan.com/wp-content/uploads/2023/12/5a902db97f96951c82922874-e1702542217365.png',
                        width: double.infinity,
                        height:80,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ClipRect(
                      child: Image.network(
                        'https://moharamradwan.com/wp-content/uploads/2023/12/Google-play_img.png',
                        width: double.infinity,
                        height: 70,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                ],
              ),
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
                    title: getTranslatedString(servicesController.distinguishesTitle[index]),
                    content:getTranslatedString(servicesController.distinguishesContent[index]) ,
                  );
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
                  'https://moharamradwan.com/wp-content/uploads/2023/12/01.png',
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
                    title:getTranslatedString(servicesController.maintenanceTitle[index]) ,
                    content:getTranslatedString(servicesController.maintenanceContent[index]),
                  );
                },
                itemCount: servicesController.maintenanceContent.length,
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
                  'https://moharamradwan.com/wp-content/uploads/2023/12/Mobile-App-Landing-page-1.png',
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
                          CenterHeaderText(text: servicesController.numTitle[index]),
                          ContentText(text: servicesController.numContent[index]),
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
                  height: 240,
                  crossAxisCount: 1,
                ),
                itemBuilder:  (_, index) {
                  return QuestionsWidget(
                    question: servicesController.questionsApp[index],
                    answer: servicesController.answersApp[index],
                  );
                },
                itemCount: servicesController.questionsApp.length,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
