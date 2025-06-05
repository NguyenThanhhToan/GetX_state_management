import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../../service/authService.dart';


class SignUpController extends GetxController {
  AuthService authService = Get.find();

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
    cardNumberController.dispose();
    cardHolderNameController.dispose();
    expiryDateController.dispose();
    cvvController.dispose();

    firstName.value = '';
    lastName.value = '';
    cardNumber.value = '';
    cardHolderName.value = '';
    expiryDate.value = '';
    cvv.value = '';

    super.onClose();
  }

  bool isValidFirstName(String value) {
    final trimmed = value.trim();
    return trimmed.isNotEmpty && RegExp(r"^[a-zA-ZÀ-ỹ\s]+$").hasMatch(trimmed);
  }

  bool isValidLastName(String value) {
    final trimmed = value.trim();

    return trimmed.isNotEmpty && RegExp(r"^[a-zA-ZÀ-ỹ\s]+$").hasMatch(trimmed);
  }

  bool isValidCardNumber(String value) =>
    RegExp(r'^\d{6}$').hasMatch(value.replaceAll(' ', ''));

  bool isValidCardHolderName(String value) {
    final trimmed = value.trim();
    return trimmed.isNotEmpty && RegExp(r"^[a-zA-ZÀ-ỹ\s]+$").hasMatch(trimmed);
  }

  bool isValidExpiryDate(String value) {
    
  final trimmed = value.trim();
  final regex = RegExp(r'^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/\d{4}$');
  if (!regex.hasMatch(trimmed)) return false;

  try {
    final parts = trimmed.split('/');
    final day = int.parse(parts[0]);
    final month = int.parse(parts[1]);
    final year = int.parse(parts[2]);
    final date = DateTime(year, month, day);
    final now = DateTime.now();
    if (date.year != year || date.month != month || date.day != day) return false;
    if (date.isBefore(DateTime(now.year, now.month, now.day))) return false;
    return true;
  } catch (_) {
    return false;
  }
}
      
  bool isValidCvv(String value) => RegExp(r'^\d{3,4}$').hasMatch(value);

  bool validateStep1() {
    if (!isValidFirstName(firstName.value)) {
      Get.snackbar(
        "Notice",
        "First name is required and must not contain numbers or special characters.",
      );
      return false;
    }
    if (!isValidLastName(lastName.value)) {
      Get.snackbar(
        "Notice",
        "Last name is required and must not contain numbers or special characters.",
      );
      return false;
    }
    authService.userFirstName(firstName.value);
    authService.userLastName(lastName.value);
    return true;
  }

  bool validateStep2() {
    if (!isValidCardNumber(cardNumber.value)) {
      Get.snackbar(
        "Notice",
        "Card number must be exactly 12 digits.",
      );
      return false;
    }
    if (!isValidCardHolderName(cardHolderName.value)) {
      Get.snackbar(
        "Notice",
        "Card holder name is required and must only contain letters.",
      );
      return false;
    }
    if (!isValidExpiryDate(expiryDate.value)) {
      Get.snackbar(
        "Notice",
        "Expiry date must be in dd/MM/yyyy format and not in the past.",
      );
      return false;
    }
    if (!isValidCvv(cvv.value)) {
      Get.snackbar(
        "Notice",
        "CVV must be 3 or 4 digits.",
      );
      return false;
    }
    return true;
  }

}
