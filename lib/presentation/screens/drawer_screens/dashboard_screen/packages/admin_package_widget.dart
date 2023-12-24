import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:moharam_radwan/models/package_model.dart';
import '../../../../../config/database/database.dart';
import '../../../../../config/shared/dialog_utils.dart';
import '../../../../../config/theme/app_colors.dart';


class AdminPackageWidget extends StatelessWidget {
  PackageModel packageModel;
  AdminPackageWidget({super.key, required this.packageModel});


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
                        maxLines: 6,
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
                DialogUtils.showMessage(context, "هل انت متاكد من ازالة الباقة ؟",
                    posActionTitle: "نعم",
                    posAction: (){
                      MyDatabase.deletePackage(packageModel.id!);
                    },
                    negAction: (){},
                    negActionTitle: "لا"
                );

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
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ازالة ",
                      style: TextStyle(
                          color: Colors.white, fontSize: 16.0),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                     IconlyBold.delete,
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
