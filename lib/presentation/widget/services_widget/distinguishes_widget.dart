import 'package:flutter/material.dart';

import '../../../config/theme/app_colors.dart';


class DistinguishesWidget extends StatelessWidget {
  String imageUrl;
  String title;
  String content;
  DistinguishesWidget({super.key, required this.imageUrl,required this.title,
    required this.content
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical:10 ,horizontal: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 23.0,
                      child:
                      Image.asset(imageUrl,
                      fit: BoxFit.fill,
                      )
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15.0,
                        ),
                        Center(
                          child: Text(
                            title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 17,
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold),
                          ),
                        ),


                      ],
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),

            ///size with unit
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        content,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,

                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),


          ],
        ),
      ),
    );
  }
}
