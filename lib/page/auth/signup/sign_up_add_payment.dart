import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../translation/strings.dart';
import 'controller/sign_up_controller.dart';

class SignUpPayment extends GetWidget<SignUpController> {
  const SignUpPayment({super.key});

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
              t.addPaymentMethod,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(t.addDescription, style: const TextStyle(fontSize: 17)),
            const SizedBox(height: 25),

            SvgPicture.asset('assets/icons/Group.svg', width: 44, height: 44),

            const SizedBox(height: 20),
            TextField(
              controller: controller.cardNumberController,
              onChanged: controller.updateCardNumber,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: t.cardNumber,
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
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset(
                    "assets/icons/CreditCard.svg",
                    width: 20,
                    height: 20,
                  ),
                ),
                ),
              ),
            const SizedBox(height: 20),

            TextField(
              controller: controller.cardHolderNameController,
              onChanged: controller.updateCardHolderName,
              decoration: InputDecoration(
                hintText: t.cardHolderName,
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
            Row(
              children: [
                // Expiry Date Field (takes most space)
                Expanded(
                  child: TextField(
                    controller: controller.expiryDateController,
                    onChanged: controller.updateExpiryDate,
                    decoration: InputDecoration(
                      hintText: t.expiryDate,
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
                ),
                const SizedBox(width: 12),

                SizedBox(
                  width: 100,
                  child: TextField(
                    controller: controller.cvvController,
                    onChanged: controller.updateCvv,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'CVV',
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
                ),
              ],
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
            controller.completeSignUp();
          },
          child: const Text(
            "Add",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
