import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimatedLogo extends StatelessWidget {
  const AnimatedLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Spacer(),
        Lottie.asset('assets/images/splash.json',
            frameRate: FrameRate.composition,
            repeat: false,
            width: 300,
            height: 200
        ),
        const Spacer(),
      ],
    );
  }
}
