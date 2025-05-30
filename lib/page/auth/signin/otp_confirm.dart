
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../translation/strings.dart';
import 'controller/otp_confirm_controller.dart';


class OtpConfirm extends GetWidget<OtpConfirmController>{
  const OtpConfirm ({super.key});


  @override
  Widget build(BuildContext context) {
    final t = T(context);
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
             Text(
              t.otpAuthentication,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            const SizedBox(height: 8),
            Text(
              t.sentTo,
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              "${Get.arguments['phone']}",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(6, (index) {
                return SizedBox(
                  width: 45,
                  child: TextField(
                    controller: controller.controllers[index],
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
                    onChanged: (value) => controller.onOtpChanged(index, value, focusNodes),
                  ),
                );
              }),
            ),
          ]
        )
      )
    );
  }
}