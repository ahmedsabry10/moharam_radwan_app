import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moharam_radwan/config/theme/app_colors.dart';

Widget buildServicesItem(
    context, {
      required int index,
      required String title,
      required String icons,
      //required Widget screens,
    }) =>
    InkWell(
        onTap: ({
          int index = 0,
        }) {
         // Get.to(()=>screens);
        },
        child: Card(
          color: Colors.white,
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(icons,
                  color: AppColors.primary,
                  width: 70.0, height: 50.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '${title}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ));