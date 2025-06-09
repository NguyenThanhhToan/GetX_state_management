import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../service/authService.dart';

class AccountInfoController extends GetxController {
  final isEditing = false.obs;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();

  final AuthService authService = Get.find();

  @override
  void onInit() {
    super.onInit();
    firstNameController.text = authService.firstName.value;
    lastNameController.text = authService.lastName.value;
    phoneController.text = authService.phoneNumber.value;
    emailController.text = authService.email.value;

    ever(authService.phoneNumber, (value) {
      phoneController.text = value ?? '';
    });

  }

  void toggleEdit() {
    isEditing.value = true;
  }

  void saveChanges() {
    authService.firstName.value = firstNameController.text;
    authService.lastName.value = lastNameController.text;
    authService.phoneNumber.value = phoneController.text;
    authService.email.value = emailController.text;

    isEditing.value = false;
    FocusManager.instance.primaryFocus?.unfocus();

  }

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    super.onClose();
  }
}
