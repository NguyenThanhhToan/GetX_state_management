import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../data/asset/asset_keys.dart';

class ServiceItem3 extends StatelessWidget {
  const ServiceItem3({
    super.key,
    required this.serviceName,
    required this.icon,
  });

  final String serviceName;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: const Color(0xFF00DF71),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  serviceName,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    height: 1.2
                  ),
                  softWrap: true,
                ),
                const SizedBox(height: 25),
                SvgPicture.asset(
                  Assets.nextIcon,
                  width: 30,
                  height: 30,
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              icon,
              width: 110,
              height: 110,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceItem4 extends StatelessWidget {
  const ServiceItem4({
    super.key,
    required this.serviceName,
    required this.icon,
  });

  final String serviceName;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.fromLTRB(15,8,15,8),
      decoration: BoxDecoration(
        color: const Color(0xFF00DF71),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              serviceName,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  height: 1.2
              ),
              softWrap: true,
            ),
          ),
          Expanded(
            flex: 2,
            child: SvgPicture.asset(
              icon,
              width: 110,
              height: 110,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              Assets.nextIcon,
              width: 27,
              height: 27,
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceItem5 extends StatelessWidget {
  const ServiceItem5({
    super.key,
    required this.serviceName,
    required this.icon,
  });

  final String serviceName;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.fromLTRB(15,8,15,8),
      decoration: BoxDecoration(
        color: const Color(0xFF00DF71),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              serviceName,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  height: 1.2
              ),
              softWrap: true,
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: SvgPicture.asset(
                  icon,
                  width: 70,
                  height: 70,
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                flex: 1,
                child: SvgPicture.asset(
                  Assets.nextIcon,
                  width: 27,
                  height: 27,
                ),
              ),
            ]
          )
        ],
      ),
    );
  }
}
