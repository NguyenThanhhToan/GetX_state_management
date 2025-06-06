import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../data/asset/asset_keys.dart';

class AccountItem extends StatelessWidget{
  const AccountItem({super.key, required this.label, required this.icon, required this.route});

  final String label;
  final String icon;
  final String route;

  @override
  Widget build(BuildContext context) {
   return GestureDetector(
     onTap: () => Get.toNamed(route),
     child: Container(
       padding: const EdgeInsets.fromLTRB(10, 13, 10, 14),
       decoration: const BoxDecoration(
         border: Border(
           bottom: BorderSide(
             color: Color(0xFFE0E0E0),
             width: 1,
           ),
         ),
       ),
       child: Row(
         children: [
           Expanded(
             flex: 1,
             child: SvgPicture.asset(icon, width: 23, height: 23),
           ),
           const SizedBox(width: 10),
           Expanded(
             flex: 8,
             child:  Text(label, style: TextStyle(fontSize: 18),),
           ),
           Expanded(
            flex: 1,
             child: SvgPicture.asset(Assets.arrowRight, width: 15, height: 15) ,
           ),
         ]
       )
     )
   );
  }
}