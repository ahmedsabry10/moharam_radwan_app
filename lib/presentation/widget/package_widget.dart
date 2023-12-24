import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../config/theme/app_colors.dart';
import '../../models/package_model.dart';

class PackageWidget extends StatelessWidget {
  PackageModel packageModel;
  PackageWidget({super.key , required this.packageModel});

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
    return Card(
      color: Colors.white,
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      packageModel.name!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 18,
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 10.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      '${packageModel.price!}  د.إ  / ${packageModel.duration!}',
                      textDirection: TextDirection.rtl,

                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                          fontSize: 15,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 10.0,
            ),
            ///size with unit
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        packageModel.description!,
                        textDirection: TextDirection.rtl,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 7,
                        style: const TextStyle(
                            fontSize: 14.5,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            ///Add to Cart
            InkWell(
              onTap: () {
                _launcherUrl(1);
              },
              child: Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color:
                  AppColors.primary, //colors[widget.index%colors.length],

                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "order_now".tr,
                      style: const TextStyle(
                          color: Colors.white, fontSize: 16.0),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Icon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
