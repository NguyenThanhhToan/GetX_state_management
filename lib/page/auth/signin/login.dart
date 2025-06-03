import 'package:example_app/page/auth/signin/widget/signin_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../data/asset/asset_keys.dart';
import '../../../router/app_route.dart';
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
                SvgPicture.asset(Assets.mainIcon, width: 140, height: 105),
                const SizedBox(height: 145),
                Text(t.welcome, style: TextStyle(fontSize: 18)),
                Text(
                  t.letsSignIn,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 40),
                SignItem(
                  title: t.continueGoogle,
                  icon: Assets.googleIcon,
                  route: AppRoutes.addPhone,
                ),
                SignItem(
                  title: t.continueWeChat,
                  icon: Assets.weChatIcon,
                  route: AppRoutes.addPhone,
                ),
                SignItem(
                  title: t.continueFacebook,
                  icon: Assets.facebookIcon,
                  route: AppRoutes.addPhone,
                ),
                const SizedBox(
                  height: 50,
                  child: Center(
                    child: Text("or", style: TextStyle(fontSize: 17)),
                  ),
                ),
                SignItem(
                  title: t.continueMobile,
                  icon: Assets.phoneIcon,
                  route: AppRoutes.addPhone,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
