import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controller/select_country_controller.dart';

class CountryTile extends StatelessWidget {
  final Map<String, String> country;
  final SelectCountryController controller;

  const CountryTile({
    super.key,
    required this.country,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final String code = country['code']!.toUpperCase();

    return Obx(() => ListTile(
      leading: SvgPicture.asset(
        'assets/icons/country/$code.svg',
        width: 32,
        height: 20,
        fit: BoxFit.cover,
      ),
      title: Text(
        country['name']!,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
      trailing: controller.selectedCountryCode.value == code
          ? const Icon(Icons.check, color: Colors.black)
          : null,
      onTap: () => controller.selectCountry(code),
    ));
  }
}
