import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moharam_radwan/config/shared/date_utils.dart';
import 'package:moharam_radwan/config/theme/app_colors.dart';
import 'package:moharam_radwan/models/offers_model.dart';
import 'package:moharam_radwan/presentation/widget/animated_logo.dart';
import '../../../../../config/database/database.dart';
import '../../../../../config/shared/constants.dart';
import '../../../../../config/shared/dialog_utils.dart';
import '../../../../widget/button_widget.dart';

class AddNewOffer extends StatefulWidget {
  const AddNewOffer({super.key});

  @override
  State<AddNewOffer> createState() => _AddNewOfferState();
}

class _AddNewOfferState extends State<AddNewOffer> {
  var formKey = GlobalKey<FormState>();
  var arabicNameController = TextEditingController();
  var imageUrlController = TextEditingController();
  var priceController=TextEditingController();

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
                            controller: arabicNameController,
                            style: TextStyle(
                              color: AppColors.primary,
                            ),
                            decoration:  InputDecoration(
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 20),
                              border: InputBorder.none,
                              hintText: 'Offer Name',
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
                              hintText: 'Offer Price',
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
                        Row(
                          children: [

                            Expanded(
                              child: ButtonWidget(
                                  icon: FontAwesomeIcons.photoFilm,
                                  text: 'Gallery',
                                  onClicked: getGalleryOfferImage),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Expanded(
                              child: ButtonWidget(
                                  icon: FontAwesomeIcons.camera,
                                  text: 'Camera',
                                  onClicked: getCameraOfferImage),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 10.0,
                        ),

                        offerImageFile != null
                            ? Stack(
                          alignment: AlignmentDirectional.topEnd,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(12)),
                                image: DecorationImage(
                                    image: FileImage(offerImageFile!), fit: BoxFit.cover),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    removePostImage();
                                  });
                                },
                                icon: const CircleAvatar(
                                  radius: 20.0,
                                  child: Icon(
                                    Icons.close,
                                    size: 16.0,
                                  ),
                                )),
                          ],
                        )
                            : const SizedBox(
                          height: 5.0,
                        ),

                        SizedBox(
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
                                    offerImageFile!=null ? addNewOffer() :DialogUtils.showMessage(context, 'من فضلك اختر صوره العرض',
                                        posActionTitle: 'نعم',
                                        posAction: (){
                                        }
                                    ) ;
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

  final ImagePicker picker = ImagePicker();
  String offerImageUrl = '';
  XFile? offerImage;
  File? offerImageFile;
  Future<void> getGalleryOfferImage() async {
    offerImage = await picker.pickImage(
      source:ImageSource.gallery,
    );
    if (offerImage != null) {
      setState(() {
        offerImageFile = File(offerImage!.path);
      });
    } else {}
  }
  Future<void> getCameraOfferImage()async{
    offerImage = await picker.pickImage(
      source: ImageSource.camera,
    );
    if (offerImage != null) {
      setState(() {
        offerImageFile = File(offerImage!.path);
      });
    } else {
    }
  }
  void removePostImage(){
    setState(() {
      offerImageFile=null;
    });
  }
  void addNewOffer() async {
    final firebaseStorage = FirebaseStorage.instance;
    if (formKey.currentState?.validate()==false){
      return ;
    }
    if (!kIsWeb && Platform.isAndroid){
      await firebaseStorage
          .ref()
          .child('offers/${Uri.file(offerImage!.path).pathSegments.last}')
          .putFile(offerImageFile!)
          .then((value) {
        value.ref.getDownloadURL().then((value) async {
          offerImageUrl = value;
          //step 1 >> Validator



          //step 2 >> add database
          OfferModel offerModel=OfferModel(
            name: arabicNameController.text,
            imageUrl: offerImageUrl,
            dateTime: DateTime.now().extractDateOnly(),
            price: priceController.text,


            //userName: SharedData.user!.fullName, dateTime:DateTime.now().subtract(const Duration(days: 365)), address: '', phone: SharedData.user!.phoneNumber,

          );

          await MyDatabase.createOffer(
              offerModel);
          Constants.showErrorDialog(context: context, msg: 'تمت الاضافه بنجاح');

          //Constants.showToast(msg: 'تمت الاضافه بنجاح');

          // emit(SocialUploadProfileImageSuccessState());
        }).catchError((error) {
          print(error.toString());
        });
      }).catchError((error) {
        print(error.toString());
      });
    }


  }

}
