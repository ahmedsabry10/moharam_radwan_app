import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late Timer _timer;

  _goNext() => Get.off(()=>Home());
  _startDelay() {
    _timer = Timer(const Duration(milliseconds: 5000), () => _goNext());
  }

  @override
  void initState() {
    super.initState();

    _startDelay();
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Lottie.asset('assets/images/splash.json',
                  frameRate: FrameRate.composition
              )

          ),
        )
    );
  }
}

