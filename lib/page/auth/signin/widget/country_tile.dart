import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';
import '../controller/select_country_controller.dart';

class CountryTile extends StatelessWidget {
  final Country country;
  final SelectCountryController controller;

  const CountryTile({
    super.key,
    required this.country,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isSelected = controller.selectedCountry.value?.isoCode == country.isoCode;

      return ListTile(
        leading: CountryPickerUtils.getDefaultFlagImage(country),
        title: Text(
          country.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        trailing: isSelected ? const Icon(Icons.check, color: Colors.black) : null,
        onTap: () => controller.selectCountry(country),
      );
    });
  }
}
