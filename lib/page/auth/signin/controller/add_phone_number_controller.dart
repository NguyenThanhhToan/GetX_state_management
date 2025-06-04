import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:country_pickers/country.dart';

class AddPhoneNumberController extends GetxController {
  var phoneNumber = ''.obs;
  final textEditingController = TextEditingController();

  var selectedCountry = Country(
    isoCode: 'VN',
    iso3Code: 'VNM',
    phoneCode: '84',
    name: 'Vietnam',
  ).obs;

  String get countryCode => selectedCountry.value.isoCode;
  String get dialCode => '+${selectedCountry.value.phoneCode}';

  void updatePhoneNumber(String value) {
    phoneNumber.value = value;
  }

  void updateSelectedCountry(Country country) {
    selectedCountry.value = country;
  }

  bool validPhoneNumber() {
    final phone = phoneNumber.value.trim();

    if (phone.isEmpty) {
      Get.snackbar('Error', 'Phone Number cannot be empty');
      return false;
    }
    
    if (!RegExp(r'^0\d{9,10}$').hasMatch(phone)) {
      Get.snackbar('Error', 'Invalid phone number format');
      return false;
    }

    return true;
  }

  @override
  void onClose() {
    textEditingController.dispose();
    super.onClose();
  }
}
