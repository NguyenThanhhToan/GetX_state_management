import 'package:example_app/data/asset/asset_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../router/app_route.dart';

final Map<String, String> serviceIcons = {
  'parking_meter': Assets.serviceItem5,
  'courier_service': Assets.serviceItem4,
  'grocery_delivery': Assets.serviceItem3,
  'moving_service': Assets.serviceItem2,
  'ride_service': Assets.serviceItem1,
};

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    super.key,
    required this.type,
    required this.date,
    required this.fee,
    required this.rating,
    required this.route,
  });

  final String type;
  final String date;
  final String fee;
  final String rating;
  final String route;

  @override
  Widget build(BuildContext context) {
    final String iconPath = serviceIcons[type] ?? 'assets/icons/default.svg';

    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFE0E0E0),
            width: 1,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SvgPicture.asset(iconPath, width: 50, height: 50),
          ),
          Expanded(
            flex: 2,
            child: Center( child: Text(date, style: const TextStyle(fontSize: 16)),)
          ),
          Expanded(
            flex: 1,
            child: Center( child: Text(fee, style: const TextStyle(fontSize: 16)),)
          ),
          Expanded(
            flex: 2,
            child: Center(child: _buildRating(rating)),
          )

        ],
      ),
    );
  }
}
Widget _buildRating(String rating) {
  if (rating == 'unrated') {
    return  GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.rateService, arguments: {'source': 'service'});
      },
      child:
        Text('Rate it', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF00DF71)))
    );
  } else if (rating == 'dispute') {
    return const Text('Dispute', style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFCD7013)));
  } else {

    final starCount = int.tryParse(rating) ?? 0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return Icon(
          index < starCount ? Icons.star : Icons.star_border,
          color: Color(0xFF00DF71),
          size: 20,
        );
      }),
    );
  }
}

