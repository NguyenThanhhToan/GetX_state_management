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
            SizedBox(height: 210),
            SvgPicture.asset('assets/icons/approve_1.svg', width: 200, height: 200),
            const SizedBox(height: 10),
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
            const SizedBox(height: 200),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: const Size.fromHeight(56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                   )
                ),
                  child: const Text("Continue",style: TextStyle(color: Color(0xFF00DF71),fontWeight: FontWeight.bold, fontSize: 16),)
              ),
            )
          ],
        ),
      ),

    );
  }
}
