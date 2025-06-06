import 'package:example_app/page/navAccount/controller/account_controller.dart';
import 'package:example_app/page/navAccount/widget/account_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../component/navbar.dart';
import '../../data/asset/asset_keys.dart';
import '../../router/app_route.dart';
import '../../translation/strings.dart';

class AccountScreen extends GetWidget<AccountController> {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = T(context);
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const CustomNavBar(currentIndex: 3),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 185,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: const BoxDecoration(
                color: Color(0xFF00DF71),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  CircleAvatar(
                    radius: 39,
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "${controller.userFirstName.value} ${controller.userLastName.value}",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    t.account,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  const SizedBox(height: 8),
                  AccountItem(
                    label: t.accountText1,
                    icon: Assets.account1,
                    route: AppRoutes.accountInfo,
                  ),
                  AccountItem(
                    label: t.accountText2,
                    icon: Assets.account2,
                    route: AppRoutes.history,
                  ),
                  AccountItem(
                    label: t.accountText3,
                    icon: Assets.account3,
                    route: "/help",
                  ),
                  const SizedBox(height: 22),
                  Text(
                    t.general,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                    ),
                  const SizedBox(height: 8),
                  AccountItem(
                    label: t.accountText4,
                    icon: Assets.account4,
                    route: "/help",
                  ),
                  AccountItem(
                    label: t.accountText5,
                    icon: Assets.account5,
                    route: "/help",
                  ),
                  AccountItem(
                    label: t.accountText6,
                    icon: Assets.account6,
                    route: "/help",
                  ),
                  AccountItem(
                    label: t.accountText7,
                    icon: Assets.account7,
                    route: "/help",
                  ),
                  AccountItem(
                    label: t.accountText8,
                    icon: Assets.account8,
                    route: "/help",
                  ),
                  AccountItem(
                    label: t.accountText9,
                    icon: Assets.account9,
                    route: "/help",
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
