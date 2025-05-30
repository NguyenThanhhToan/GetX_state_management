import 'package:example_app/page/auth/signin/widget/signin_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../translation/strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = T(context);
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
                Text(t.welcome, style: TextStyle(fontSize: 18)),
                Text(
                  t.letsSignIn,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 40),
                SignItem(
                  title: t.continueGoogle,
                  icon: "assets/icons/google_signIn.svg",
                  route: '/addPhone',
                ),
                SignItem(
                  title: t.continueWeChat,
                  icon: "assets/icons/weChat_signIn.svg",
                  route: '/addPhone',
                ),
                SignItem(
                  title: t.continueFacebook,
                  icon: "assets/icons/facebook_signIn.svg",
                  route: '/addPhone',
                ),
                const SizedBox(
                  height: 50,
                  child: Center(
                    child: Text("or", style: TextStyle(fontSize: 17)),
                  ),
                ),
                SignItem(
                  title: t.continueMobile,
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
