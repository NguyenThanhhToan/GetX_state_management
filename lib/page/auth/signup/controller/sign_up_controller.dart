import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../../router/app_route.dart';

class SignUpController extends GetxController {
  final firstName = ''.obs;
  final lastName = ''.obs;
  final cardNumber = ''.obs;
  final cardHolderName = ''.obs;
  final expiryDate = ''.obs;
  final cvv = ''.obs;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final cardNumberController = TextEditingController();
  final cardHolderNameController = TextEditingController();
  final expiryDateController = TextEditingController();
  final cvvController = TextEditingController();

  void updateFirstName(String value) => firstName.value = value;
  void updateLastName(String value) => lastName.value = value;
  void updateCardNumber(String value) => cardNumber.value = value;
  void updateCardHolderName(String value) => cardHolderName.value = value;
  void updateExpiryDate(String value) => expiryDate.value = value;
  void updateCvv(String value) => cvv.value = value;

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    super.onClose();
  }

  void completeSignUp() {
    print("📝 SignUp Info:");
    print("First Name: ${firstName.value}");
    print("Last Name: ${lastName.value}");
    print("Card Number: ${cardNumber.value}");
    print("Card Holder Name: ${cardHolderName.value}");
    print("Expiry Date: ${expiryDate.value}");
    print("CVV: ${cvv.value}");

    if (firstName.value.isNotEmpty &&
        lastName.value.isNotEmpty &&
        cardNumber.value.isNotEmpty &&
        cardHolderName.value.isNotEmpty &&
        expiryDate.value.isNotEmpty &&
        cvv.value.isNotEmpty) {
      Get.offAllNamed(AppRoutes.signupSuccess);
    } else {
      Get.snackbar(
        "Error",
        "Please fill in all required fields.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
    }
  }

}
