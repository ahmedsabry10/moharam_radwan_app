import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../../config/theme/app_colors.dart';

class PackageWidget extends StatelessWidget {
  const PackageWidget({super.key});
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
            SizedBox(
              height: 10.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'باقة بلا حدود',
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

            SizedBox(
              height: 10.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'د.إ 1000 /شهريا',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
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
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        'تصاميم غير محدودة فيديو غير محدود كتابة محتوى ونشر إدارة يومية حملات ممولة دعم فنى 24 ساعة طوال أيام الأسبوع',
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
              onTap: () {},
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
                      IconlyBold.paper,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),

            /*
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0,bottom: 4.0,top: 8.0),
                  child: Row(
                    children: [
                      Text(
                        AppCubit.get(context).isArabic? '${widget.product.arabicName}':'${widget.product.englishName}',


                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color:Colors.black87,

                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,

                      ),
                      Spacer(),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text(
                        AppCubit.get(context).isArabic? 'السعر لكل ${widget.product.unit}':'price per ${widget.product.englishUnit}' ,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                          color:Colors.grey,

                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,

                      ),
                      Spacer(),
                    ],
                  ),
                ),
                ///price and add to bag
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10, horizontal: 10.0),
                  child: widget.product.priceDes== ""?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppCubit.get(context).isArabic?
                        ' ${widget.product.price} ${widget.product.arabicCoin}':' ${widget.product.price} ${widget.product.englishCoin}',

                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap:(){

                          DialogUtils.showMessage(context,
                              AppCubit.get(context).isArabic?
                              'هل تريد اضافه المنتج للحقيبه؟':'Do you want to add this product to your bag ?',
                              posActionTitle:
                              AppCubit.get(context).isArabic? 'نعم':'yes',
                              posAction: (){
                                MyDataBase.copyDocumentWithSameId(sourceCollectionPath, widget.product.id!, destinationCollectionPathAddToBag);
                                Constants.showToast(msg:
                                AppCubit.get(context).isArabic?
                                'تمت الاضافه بنجاح':'Added Successfully');
                              },
                              negActionTitle: AppCubit.get(context).isArabic?'لا':'No',
                              negAction: (){}
                          );

                        },


                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            color:Colors.green, //colors[widget.index%colors.length],

                            borderRadius: const BorderRadius.all(Radius.circular(10)),),
                          child: Icon(
                            IconBroken.Bag_2,
                            color: Colors.white,
                          ),

                        ),
                      ),
                    ],
                  ): Row(
                    children: [
                      Text(
                        AppCubit.get(context).isArabic?
                        ' ${widget.product.priceDes} ${widget.product.arabicCoin}':' ${widget.product.priceDes} ${widget.product.englishCoin}',

                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Colors.green,

                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        '${widget.product.price}',
                        style: new TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap:(){

                          DialogUtils.showMessage(context,  AppCubit.get(context).isArabic?
                          'هل تريد اضافه المنتج للحقيبه؟':'Do you want to add this product to your bag ?',
                              posActionTitle:  AppCubit.get(context).isArabic?'نعم':'yes',
                              posAction: (){
                                MyDataBase.copyDocumentWithSameId(sourceCollectionPath, widget.product.id!, destinationCollectionPathAddToBag);
                                Constants.showToast(msg:
                                AppCubit.get(context).isArabic?
                                'تمت الاضافه بنجاح':'Added Successfully');

                              },
                              negActionTitle:  AppCubit.get(context).isArabic?'لا':'No',
                              negAction: (){}
                          );

                        },

                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            color:Colors.green, //colors[widget.index%colors.length],

                            borderRadius: const BorderRadius.all(Radius.circular(10)),),
                          child: Icon(
                            IconBroken.Bag_2,
                            color: Colors.white,
                          ),

                        ),
                      ),
                    ],
                  ),
                ),

                 */
          ],
        ),
      ),
    );
  }
}
