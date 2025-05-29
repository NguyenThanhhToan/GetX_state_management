import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../mockData/country_data.dart';

class AddPhoneNumberController extends GetxController {
  var phoneNumber = ''.obs;
  var countryCode = 'VN'.obs;
  var dialCode = '+84'.obs;
  final textEditingController = TextEditingController();

  void updatePhoneNumber(String value) {
    phoneNumber.value = value;
  }

  void updateCountryCode(String code) {
    countryCode.value = code;

    final match = countryList.firstWhere(
          (element) => element['code'] == code,
      orElse: () => {'dial_code': ''},
    );

    dialCode.value = match['dial_code'] ?? '';

    @override
    void onClose() {
      textEditingController.dispose();
      super.onClose();
    }
  }

  bool validPhoneNumber() {

    final phone = phoneNumber.value.trim();

    if (phone.isEmpty) {
      Get.snackbar('Error', 'Phone Number not empty');
      return false;
    }

    if (phone.length < 10) {
      Get.snackbar('Error', 'Invalid phone number');
      return false;
    }

    if (!RegExp(r'^\d+$').hasMatch(phone)) {
      Get.snackbar('Error', 'Invalid phone number');
      return false;
    }
    return true;
  }
}
