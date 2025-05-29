
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/otp_confirm_controller.dart';

class OtpConfirm extends GetWidget<OtpConfirmController>{
  const OtpConfirm ({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FocusNode> focusNodes = List.generate(6, (_) => FocusNode());
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(backgroundColor: Colors.white),
        ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'OTP Authentication',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            const SizedBox(height: 8),
            Text(
              "An authentication code has been sent to ${Get.arguments['phone']}",
              style: const TextStyle(fontSize: 17),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(6, (index) {
                return SizedBox(
                  width: 45,
                  child: Obx(() => TextField(
                    focusNode: focusNodes[index],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    decoration: const InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    onChanged: (value) {
                      controller.otp[index].value = value;
                      if (value.isNotEmpty && index < 5) {
                        focusNodes[index + 1].requestFocus();
                      } else if (value.isEmpty && index > 0) {
                        focusNodes[index - 1].requestFocus();
                      }
                    },
                  )),
                );
              }),
            ),
          ]
        )
      )
    );
  }
}