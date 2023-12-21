import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:moharam_radwan/config/theme/app_colors.dart';
import 'package:moharam_radwan/presentation/widget/text_widget.dart';

import '../../../config/shared/fixed_grid.dart';
import '../../widget/carousel_item.dart';

class WhoAreWe extends StatelessWidget {
  WhoAreWe({super.key});

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
          'who_are_we'.tr
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CenterHeaderText(text: "header1".tr),
              const SizedBox(
                height: 10,
              ),
              BigContentText(text: "content_for_header1".tr),
              const SizedBox(
                height: 20,
              ),
              ContentText(text: "content2_for_header1".tr),
              const SizedBox(
                height: 20,
              ),
              ContentText(text: "content3_for_header1".tr),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Spacer(),
                  Lottie.asset('assets/images/splash.json',
                      frameRate: FrameRate.composition,
                    repeat: false,
                    width: 300,
                    height: 200
                  ),
                  const Spacer(),
                ],
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 2,
                  height: 100,
                  crossAxisCount: 2,
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
                          CenterHeaderText(text: "+145"),
                          ContentText(text: "موقع مبرمج")
                        ],
                      ),
                    ),
                  );
                },
                itemCount: 4,
              ),


              const SizedBox(
                height: 20,
              ),

              HeaderText(text: "our_customers".tr,
                color: AppColors.primary,

              ),

              const SizedBox(
                height: 10,
              ),
              ContentText(text: "content5".tr),

              const SizedBox(
                height: 20,
              ),

              CarouselSlider.builder(

                options: CarouselOptions(
                  height: 150,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 500),
                  autoPlayCurve: Curves.easeInCubic,
                  viewportFraction: (MediaQuery.of(context).size.width > 1200) ? 0.1 :(MediaQuery.of(context).size.width > 850) ? 0.2: 0.3,

                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return OurWorkItem(
                    imageUrl: workImage[index] ,
                  );
                }, itemCount: 3,
              ),






            ],
          ),
        ),
      ),
    );
  }
}
