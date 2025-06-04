import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../router/app_route.dart';
import '../../../translation/strings.dart';
import 'controller/sign_up_controller.dart';

class SignUpFullName extends GetWidget<SignUpController> {
  const SignUpFullName({super.key});

  @override
  Widget build(BuildContext context) {
    final t = T(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(backgroundColor: Colors.white),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              t.welcome2,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(t.enterNameSignUp, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 25),
            // First Name Field
            TextField(
              controller: controller.firstNameController,
              onChanged: controller.updateFirstName,
              decoration: InputDecoration(
                hintText: t.fName,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                fillColor: const Color(0xFFF5F5F8),
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.black, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Last Name Field
            TextField(
              controller: controller.lastNameController,
              onChanged: controller.updateLastName,
              decoration: InputDecoration(
                hintText: t.lName,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                fillColor: const Color(0xFFF5F5F8),
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.black, width: 2),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 40),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF00DF71),
            minimumSize: const Size.fromHeight(56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: () {
            if (controller.validateStep1()) {
              Get.toNamed(AppRoutes.signupAddPayment);
            }
          },
          child: const Text(
            "Next",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          ),
        ),
    );
  }
}
