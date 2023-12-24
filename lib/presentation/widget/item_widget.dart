import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:moharam_radwan/models/offers_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../config/theme/app_colors.dart';

class offerWidget extends StatefulWidget {
  OfferModel offerModel;
  offerWidget({super.key,required this.offerModel});

  @override
  State<offerWidget> createState() => _offerWidgetState();
}

class _offerWidgetState extends State<offerWidget> {

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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //if(widget.categories.catId=='fruitsCat')
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),

              ),

              child: CachedNetworkImage(
                imageUrl:widget.offerModel.imageUrl!,
                fit: BoxFit.fill,
                height: 170,
                width: double.infinity,
                placeholder: (context, url) => const Center(
                  child: Text(
                    'Loading ...',
                    style: TextStyle(
                        color: Colors.green, fontSize: 15.0),
                  ),
                ),
                errorWidget: (context, url, error) =>
                const Icon(Icons.error),
              ),

              //Image.network(widget.product.imageUrl)
            ),
            ///name with price
            SizedBox(
              height: 10.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Text(widget.offerModel.name!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 17,
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),

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
                        '${widget.offerModel.price}د.إ ',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
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

                  borderRadius: BorderRadius.only(
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
