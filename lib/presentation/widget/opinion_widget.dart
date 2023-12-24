import 'package:flutter/material.dart';

import '../../config/theme/app_colors.dart';

class OpinionsWidget extends StatelessWidget {
  String clientName;
  String clientOpinion;
  OpinionsWidget({super.key , required this.clientName, required this.clientOpinion});

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
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.amber,
                      backgroundImage: NetworkImage('https://moharamradwan.com/wp-content/uploads/2023/12/testimonial_img-11.jpeg'),
                      radius: 25.0
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 15.0,
                      ),
                      Center(
                        child: Text(
                        clientName,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 18,
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold),
                        ),
                      ),


                    ],
                  ),

                ],
              ),
            ),
            SizedBox(
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
                        clientOpinion,
                        textDirection: TextDirection.rtl,
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
           SizedBox(
             height: 20.0,
           ),


          ],
        ),
      ),
    );
  }
}
