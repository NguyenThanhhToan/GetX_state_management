import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widget/signin_item.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 85),
                SvgPicture.asset('assets/icons/Main.svg', width: 140, height: 105),
                const SizedBox(height: 145),
                const Text('Welcome!', style: TextStyle(fontSize: 18)),
                const Text(
                  "Let's sign you in",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 40),
                const SignItem(
                  title: "Continue with Google",
                  icon: "assets/icons/google_signIn.svg",
                  route: '/addPhone',
                ),
                const SignItem(
                  title: "Continue with WeChat",
                  icon: "assets/icons/weChat_signIn.svg",
                  route: '/addPhone',
                ),
                const SignItem(
                  title: "Continue with Facebook",
                  icon: "assets/icons/facebook_signIn.svg",
                  route: '/addPhone',
                ),
                const SizedBox(
                  height: 50,
                  child: Center(
                    child: Text("or", style: TextStyle(fontSize: 17)),
                  ),
                ),
                const SignItem(
                  title: "Continue with Mobile Phone",
                  icon: "assets/icons/phone_signIn.svg",
                  route: '/addPhone',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
