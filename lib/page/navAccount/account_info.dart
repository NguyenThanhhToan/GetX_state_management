import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../component/navbar.dart';
import '../../router/app_route.dart';
import '../../translation/strings.dart';
import 'controller/account_info_controller.dart';

class AccountInfo extends GetWidget<AccountInfoController> {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final t = T(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Obx(() => Scaffold(
        appBar: AppBar(
          title: Text(
            t.accountTitle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          actions: [
            Obx(() {
              if (!controller.isEditing.value) {
                return TextButton(
                  onPressed: controller.toggleEdit,
                  child: Text(
                    t.accountEdit,
                    style: TextStyle(fontSize: 17, color: Color(0xFF00DF71)),
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            }),
          ],
        ),
        bottomNavigationBar: const CustomNavBar(currentIndex: 3),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(t.fName, style: TextStyle(fontWeight: FontWeight.w300)),
                const SizedBox(height: 10),
                buildTextField(controller.firstNameController, controller.isEditing.value),
                const SizedBox(height: 15),
                Text(t.lName, style: TextStyle(fontWeight: FontWeight.w300)),
                const SizedBox(height: 10),
                buildTextField(controller.lastNameController, controller.isEditing.value),
                const SizedBox(height: 15),
                Text(t.phoneNumber, style: TextStyle(fontWeight: FontWeight.w300)),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    if (!controller.isEditing.value) {
                      Get.toNamed(AppRoutes.addPhone, arguments: {'source': 'profile'});
                    }
                  },
                  child: AbsorbPointer(
                    absorbing: !controller.isEditing.value,
                    child: buildTextField(controller.phoneController, controller.isEditing.value),
                  ),
                ),
                const SizedBox(height: 15),
                Text(t.email, style: TextStyle(fontWeight: FontWeight.w300)),
                const SizedBox(height: 10),
                buildTextField(controller.emailController, controller.isEditing.value),
              ],
            ),
          ),
        ),

        bottomSheet: controller.isEditing.value
            ? Container(
          color: Colors.white,
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF00DF71),
              minimumSize: const Size.fromHeight(56),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: controller.saveChanges,
            child: Text(
              t.accountBnt,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        )
            : null,
        )
      ),
    );
  }

  Widget buildTextField(TextEditingController controller, bool enabled) {
    return TextField(
      controller: controller,
      enabled: enabled,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF5F5F8),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black, width: 2),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
