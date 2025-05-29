import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../controller/add_phone_number_controller.dart';
import '../../router/app_route.dart';

class AddPhoneScreen extends GetWidget<AddPhoneNumberController> {
  const AddPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            const Text(
              'Hi!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Text(
              "What's your mobile?",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "A valid mobile number is required for verification",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Obx(() => GestureDetector(
                  onTap: () => Get.toNamed(AppRoutes.selectCountry),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/country/${controller.countryCode.value.toUpperCase()}.svg',
                          width: 24,
                          height: 16,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          controller.dialCode.value,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                )),
                const SizedBox(width: 10),
                Expanded(
                  child: Obx(() {
                    return TextField(
                      controller: controller.textEditingController, // cần thêm controller TextEditingController
                      onChanged: controller.updatePhoneNumber,
                      keyboardType: TextInputType.phone,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        suffixIcon: controller.phoneNumber.value.isNotEmpty
                            ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            controller.updatePhoneNumber('');
                            controller.textEditingController.clear();
                          },
                        )
                            : null,
                      ),
                    );
                  }),
                )
              ],
            ),
          ],
        ),
      ),
        bottomSheet: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 40),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF00DF71),
            minimumSize: const Size.fromHeight(56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: (){
            if (controller.validPhoneNumber()) {
              Get.toNamed(
                  AppRoutes.otpConfirm,
                  arguments: {'phone': controller.phoneNumber.value}
              );
            }
          },
          child: const Text("Next",
              style: TextStyle(color: Colors.white, fontSize: 18)),
        )
      )
    );
  }
}
