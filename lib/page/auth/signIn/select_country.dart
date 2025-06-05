import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/add_phone_number_controller.dart';
import 'controller/select_country_controller.dart';
import 'widget/country_tile.dart';

class SelectCountryScreen extends GetWidget<SelectCountryController> {
  const SelectCountryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(backgroundColor: Colors.white),
      ),
      backgroundColor: Colors.white,
      body: Obx(() => Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text("Select Country ",
                  style:
                  TextStyle(fontSize: 25, fontWeight: FontWeight.w800)),
            ),
          ),
          const SizedBox(height: 12),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("SUGGESTED",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF00DF71))),
            ),
          ),
          const SizedBox(height: 8),

          ...controller.suggestedCountries.map(
                (country) => CountryTile(
              controller: controller,
              country: country,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Color(0xFFF5F5F8)),
              onChanged: (value) => controller.searchQuery.value = value,
            ),
          ),
          const SizedBox(height: 8),

          Expanded(
            child: ListView(
              children: controller.filteredCountries
                  .map((country) => CountryTile(
                controller: controller,
                country: country,
              ))
                  .toList(),
            ),
          ),
        ],
      )),
        bottomSheet: Obx(() => Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 40),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF00DF71),
              minimumSize: const Size.fromHeight(56),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: controller.selectedCountry.value != null
                ? () {
              final addPhoneController = Get.find<AddPhoneNumberController>();
              addPhoneController.updateSelectedCountry(controller.selectedCountry.value!);
              Get.back();
            }
                : null,
            child: const Text(
              "Next",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ))
    );
  }
}
