import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../data/asset/asset_keys.dart';
import '../router/app_route.dart';
import '../translation/strings.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  const CustomNavBar({super.key, required this.currentIndex});

  void _onItemTapped(int index) {
    if (index == currentIndex) return;

    switch (index) {
      case 0:
        Get.offAllNamed(AppRoutes.service);
        break;
      case 1:
        Get.offAllNamed(AppRoutes.current);
        break;
      case 2:
        Get.offAllNamed(AppRoutes.inbox);
        break;
      case 3:
        Get.toNamed(AppRoutes.account);
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = T(context);

    final List<String> activeIcons = [
      Assets.navBar1Active,
      Assets.navBar2Active,
      Assets.navBar3Active,
      Assets.navBar4Active,
    ];

    final List<String> inactiveIcons = [
      Assets.navBar1,
      Assets.navBar2,
      Assets.navBar3,
      Assets.navBar4,
    ];

    final List<String> labels = [
      t.navBar1,
      t.navBar2,
      t.navBar3,
      t.navBar4,
    ];

    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,

          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          selectedItemColor: const Color(0xFF00DF71),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
          items: List.generate(
            labels.length,
                (i) => _buildNavItem(
              iconPath: currentIndex == i ? activeIcons[i] : inactiveIcons[i],
              label: labels[i],
            ),
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem({
    required String iconPath,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath,
        width: 22,
        height: 22,
      ),
      label: label,
    );
  }
}
