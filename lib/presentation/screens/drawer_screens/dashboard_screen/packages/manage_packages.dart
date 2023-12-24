import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:moharam_radwan/config/database/database.dart';
import 'package:moharam_radwan/config/theme/app_colors.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/dashboard_screen/best_offer/add_best_offer_screen.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/dashboard_screen/best_offer/best_offer_admin_widget.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/dashboard_screen/packages/add_new_packages.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/dashboard_screen/packages/admin_package_widget.dart';
import 'package:moharam_radwan/presentation/widget/text_widget.dart';

import '../../../../../config/shared/fixed_grid.dart';
import '../../../../../local/local_controller.dart';

class ManagePackages extends StatelessWidget {
  ManagePackages({super.key});

  MyLocaleController controllerLang=Get.put(MyLocaleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "control_best_packages".tr,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.white,
        onPressed: (){
          Get.to(()=> AddNewPackages());
        },
        label:CenterHeaderText(text: 'AddNewPackage'),
        icon:Icon(
          IconlyBold.paper_plus,
          color: AppColors.primary,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              StreamBuilder(
                ///add id s
                stream: MyDatabase.getStreamPackage(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  } else if (snapshot.hasData) {
                    var packages = snapshot.data?.docs
                        .map((doc) => doc.data())
                        .toList();

                    return packages!.isEmpty
                        ? Center(
                          child: SingleChildScrollView(
                            child: Column(

                              children: [
                                Icon(
                                  IconlyBold.paper,
                                  size: 250,
                                  color: Colors.black,
                                ),
                                Text('لا يوجد اي باقات مضافة حاليا ')
                              ],
                            ),
                          ),
                        )
                        : GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                        mainAxisSpacing: 4.0,
                        crossAxisSpacing: 2,
                        height: 250,
                        crossAxisCount: 2,
                      ),
                      itemBuilder:  (_, index) {
                        return AdminPackageWidget(packageModel: packages[index]) ;
                      },
                      itemCount: packages.length,
                    );
                  } else {
                    return Center(
                      child: SpinKitDancingSquare(
                        size: 30,
                        itemBuilder: (BuildContext context, int index) {
                          return DecoratedBox(
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                            ),
                          );
                        },
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
