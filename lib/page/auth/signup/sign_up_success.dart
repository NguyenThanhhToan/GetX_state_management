import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../translation/strings.dart';

class SignUpSuccess extends StatelessWidget {
  const SignUpSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    final t = T(context);

    return Scaffold(
      backgroundColor: const Color(0xFF00DF71),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/approve_1.svg', width: 200, height: 200),
            const SizedBox(height: 20),
            const Text(
              "Success!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: Colors.black),
            ),
            const SizedBox(height: 10),
            const Text(
              "You have successfully added",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Text(
              "your payment method",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 90),
          ],
        ),
      ),
    );
  }
}
