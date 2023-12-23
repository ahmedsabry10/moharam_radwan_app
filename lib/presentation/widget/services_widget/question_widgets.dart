import 'package:flutter/material.dart';

import '../../../config/theme/app_colors.dart';


class QuestionsWidget extends StatelessWidget {
  String question;
  String answer;
  QuestionsWidget({super.key,required this.question,
    required this.answer
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10.0,
              ),
              Text(
                question,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                    fontSize: 18,
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold),
              ),

              const SizedBox(
                height: 20.0,
              ),

              ///size with unit
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        answer,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,

                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
