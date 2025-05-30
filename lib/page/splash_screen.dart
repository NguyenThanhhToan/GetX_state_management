import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'auth/signin/login.dart';

class StartUpScreen extends StatelessWidget {
  const StartUpScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const LoginScreen());
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/Main.svg',width: 170, height: 135),
          const SizedBox(height: 120),
          ]
        ),
      )
    );
  }
}
