import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moharam_radwan/config/shared/date_utils.dart';
import 'package:moharam_radwan/config/theme/app_colors.dart';
import 'package:moharam_radwan/models/offers_model.dart';
import 'package:moharam_radwan/models/package_model.dart';
import 'package:moharam_radwan/presentation/widget/animated_logo.dart';
import '../../../../../config/database/database.dart';
import '../../../../../config/shared/constants.dart';
import '../../../../../config/shared/dialog_utils.dart';
import '../../../../widget/button_widget.dart';

class AddNewPackages extends StatefulWidget {
  const AddNewPackages({super.key});

  @override
  State<AddNewPackages> createState() => _AddNewPackagesState();
}

class _AddNewPackagesState extends State<AddNewPackages> {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var durationController = TextEditingController();
  var descriptionController = TextEditingController();
  var priceController=TextEditingController();


  String durationValue = "مرة واحدة";
  var durationList = [
    'مرة واحدة',
    'سنوياً',
    'شهريا',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),

                AnimatedLogo(),
                const SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 15),
                    child: Column(
                      children: [
                        ///Arabic Name
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: AppColors.primary,
                              )),
                          child: TextFormField(
                            validator: (text) {
                              if (text == null || text.trim().isEmpty) {
                                return 'please enter Name';
                              }
                              return null;
                            },
                            controller: nameController,
                            style: TextStyle(
                              color: AppColors.primary,
                            ),
                            decoration:  InputDecoration(
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 20),
                              border: InputBorder.none,
                              hintText: 'Package Name',
                              hintStyle: TextStyle(
                                color: AppColors.primary,
                              ),
                              prefixIcon: Padding(
                                padding:
                                EdgeInsets.symmetric(horizontal: 20),
                                child: Icon(
                                  Icons.wallet_outlined,
                                  color: AppColors.primary,
                                  size: 20,
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.name,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),



                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: AppColors.primary,
                              )),
                          child: TextFormField(
                            validator: (text) {
                              if (text == null || text.trim().isEmpty) {
                                return 'please enter Price ';
                              }
                              return null;
                            },
                            controller: priceController,
                            style: TextStyle(
                              color: AppColors.primary,
                            ),
                            decoration:  InputDecoration(
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 20),
                              border: InputBorder.none,
                              hintText: 'Package Price',
                              hintStyle: TextStyle(
                                color: AppColors.primary,
                              ),
                              prefixIcon: Padding(
                                padding:
                                EdgeInsets.symmetric(horizontal: 20),
                                child: Icon(
                                  Icons.wallet_outlined,
                                  color: AppColors.primary,
                                  size: 20,
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: AppColors.primary,
                              )),
                          child: TextFormField(
                            validator: (text) {
                              if (text == null || text.trim().isEmpty) {
                                return 'please enter description ';
                              }
                              return null;
                            },
                            controller: descriptionController,
                            style: TextStyle(
                              color: AppColors.primary,
                            ),
                            decoration:  InputDecoration(
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 20),
                              border: InputBorder.none,
                              hintText: 'Package description',
                              hintStyle: TextStyle(
                                color: AppColors.primary,
                              ),
                              prefixIcon: Padding(
                                padding:
                                EdgeInsets.symmetric(horizontal: 20),
                                child: Icon(
                                  Icons.wallet_outlined,
                                  color: AppColors.primary,
                                  size: 20,
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),


                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color:AppColors.primary,
                              )
                          ),
                          child: DropdownButtonFormField(
                            style: TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 17
                            ),
                            decoration:  InputDecoration(

                              contentPadding: EdgeInsets.symmetric(vertical: 20),

                              border: InputBorder.none,
                              hintText: 'Package Duration',
                              hintStyle: TextStyle(
                                  color:AppColors.primary
                              ),
                              prefixIcon: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Icon(
                                  IconlyBold.category,
                                  color: AppColors.primary,
                                  size: 20,
                                ),
                              ),
                            ),

                            // Initial Value
                            value: durationValue,

                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: durationList.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                durationValue = newValue!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),



                        Container(
                          height: 60.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: AppColors.primary,
                          ),
                          child:
                          MaterialButton(
                            onPressed: (){
                              DialogUtils.showMessage(context, 'هل انت متاكد من اضافه هذا العرض الجديد؟',
                                  posActionTitle: 'نعم',
                                  posAction: (){
                                    addNewPackage();
                                  },
                                  negAction: (){},
                                  negActionTitle: 'لا'
                              ) ;

                            },
                            child: Text(
                              'add_new_offer'.tr,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),

                /// big column
              ],
            ),
          ),
        ),
      ),
    );

  }

 
  void addNewPackage() async {
    final firebaseStorage = FirebaseStorage.instance;
    if (formKey.currentState?.validate()==false){
      return ;
    }

    //step 2 >> add database
    PackageModel packageModel=PackageModel(
      name: nameController.text,
      price: priceController.text,
      duration: durationValue,
      description: descriptionController.text


      //userName: SharedData.user!.fullName, dateTime:DateTime.now().subtract(const Duration(days: 365)), address: '', phone: SharedData.user!.phoneNumber,

    );

    await MyDatabase.createPackage(
        packageModel);
    Constants.showErrorDialog(context: context, msg: 'تمت الاضافه بنجاح');
  }

}
