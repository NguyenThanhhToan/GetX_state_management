import 'package:example_app/service/authService.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:country_pickers/country.dart';

import '../../../../router/app_route.dart';

class AddPhoneNumberController extends GetxController {
  var phoneNumber = ''.obs;
  final textEditingController = TextEditingController();
  AuthService authService = Get.find();

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

  void addPhoneNumber() {
    if (validPhoneNumber()) {
      authService.userPhoneNumber(phoneNumber.value);
      Get.toNamed(
        AppRoutes.otpConfirm,
        arguments: {'phone': '+84${phoneNumber.value}'},
      );
    }
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
