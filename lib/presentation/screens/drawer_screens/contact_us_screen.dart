import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:lottie/lottie.dart';
import 'package:moharam_radwan/config/theme/app_colors.dart';
import 'package:moharam_radwan/presentation/widget/text_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widget/animated_logo.dart';

class ContactUsScreen extends StatelessWidget {
  ContactUsScreen({super.key});


  void _launcherUrl(int value) async {
    String url = "";
    if (value == 1) {
      ///whatsapp
      url = "https://wa.me/+971588421241";
    } else if (value == 2) {
      ///facebook
      url = "https://www.facebook.com/MoharamRadwan.Ads";
    } else if (value == 3) {
      ///tiktok
      url = "https://www.tiktok.com/@moharam.radwan";
    } else if (value == 4) {
      ///gmail
      url = "mailto:moharamabdelsabour1@gmail.com";
    }
    else if (value == 5) {
      ///instagram
      url = "https://www.instagram.com/moharam.radwan.ae/";
    }
    final Uri uri = Uri.parse(url);
    if (await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "can\,t launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'contact_us'.tr
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AnimatedLogo(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){
                          _launcherUrl(1);
                        },
                        child:Row(
                          children: [
                            const Icon(
                              FontAwesomeIcons.whatsapp,
                              size: 40,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            HeaderText(text: "whatsapp".tr,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        onTap: (){
                          _launcherUrl(2);
                        },
                        child:Row(
                          children: [
                            const Icon(
                              FontAwesomeIcons.facebook,
                              size: 40,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            HeaderText(text: "facebook".tr,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        onTap: (){
                          _launcherUrl(3);
                        },
                        child:Row(
                          children: [
                            const Icon(
                                Icons.tiktok,
                              color: Colors.black,
                              size: 40,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            HeaderText(text: "tik_tok".tr, color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      InkWell(
                        onTap: (){
                          _launcherUrl(5);
                        },
                        child:Row(
                          children: [
                            const Icon(
                                FontAwesomeIcons.instagram,
                              size: 40,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            HeaderText(text: "instagram".tr,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        onTap: (){
                          _launcherUrl(4);
                        },
                        child:Row(
                          children: [
                            const Icon(
                              IconlyLight.message,
                              size: 40,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            HeaderText(text: "email".tr,
                              color: Colors.black,

                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
