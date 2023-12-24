import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:moharam_radwan/config/database/database.dart';
import 'package:moharam_radwan/config/theme/app_colors.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/dashboard_screen/best_offer/add_best_offer_screen.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/dashboard_screen/best_offer/best_offer_admin_widget.dart';
import 'package:moharam_radwan/presentation/widget/text_widget.dart';

import '../../../../../config/shared/fixed_grid.dart';
import '../../../../../local/local_controller.dart';
import '../../../../widget/item_widget.dart';

class ManageBestOffers extends StatelessWidget {
   ManageBestOffers({super.key});

  MyLocaleController controllerLang=Get.put(MyLocaleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "control_best_offers".tr,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.white,
          onPressed: (){
          Get.to(()=> AddNewOffer());
          },
          label:CenterHeaderText(text: 'AddNewOffer'),
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
                stream: MyDatabase.getStreamOffer(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  } else if (snapshot.hasData) {
                    var offers = snapshot.data?.docs
                        .map((doc) => doc.data())
                        .toList();

                    return offers!.isEmpty
                        ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                          mainAxisSpacing: 5.0,
                          crossAxisSpacing: 10,
                          height: 70,
                          //childAspectRatio:  MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height/1),
                          crossAxisCount: (MediaQuery.of(context).size.width > 1200) ? 8 :(MediaQuery.of(context).size.width > 850) ? 6: 4,
                        ),
                        itemBuilder: (_, index) {
                          return ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                            ),
                            child:Container(
                              color: Colors.grey[200],
                            ),
                          );

                        },
                        itemCount: 8,
                      ),
                    )
                        : GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                        mainAxisSpacing: 4.0,
                        crossAxisSpacing: 2,
                        height: 300,
                        crossAxisCount: 2,
                      ),
                      itemBuilder:  (_, index) {
                        return bestOfferAdminWidget(offerModel: offers[index],
                        );
                      },
                      itemCount: offers.length,
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
