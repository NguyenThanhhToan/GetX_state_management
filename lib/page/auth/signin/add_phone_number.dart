import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../translation/strings.dart';
import '../../../router/app_route.dart';
import 'controller/add_phone_number_controller.dart';

class AddPhoneScreen extends GetWidget<AddPhoneNumberController> {
  const AddPhoneScreen({super.key});

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
              t.hi,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
            t.whatsYourMobile,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              t.validMobileRequired,
              style: TextStyle(fontSize: 16),
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
                        CountryPickerUtils.getDefaultFlagImage(controller.selectedCountry.value),
                        const SizedBox(width: 8),
                        Text(
                          controller.dialCode,
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
                      controller: controller.textEditingController,
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
                ),
              ],
            )
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
                  arguments: {'phone': '+84${controller.phoneNumber.value}'},
              );
            }
          },
          child: Text(t.next,
              style: TextStyle(color: Colors.white, fontSize: 18)),
        )
      )
    );
  }
}
