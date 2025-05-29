import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SignItem extends StatelessWidget{
  const SignItem({super.key, required this.title, required this.icon, required this.route});

  final String title;
  final String icon;
  final String? route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed(route!);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        decoration: BoxDecoration(
          color: Color(0xFFF0F0F5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SvgPicture.asset(icon, width: 24, height: 24),
            const SizedBox(width: 10),
            Expanded(
              child: Center(
                child: Text(title, style: const TextStyle(fontSize: 16)),
              )
            ),
          ],
        ),
      )
    );
  }
}