import 'package:example_app/page/navAccount/controller/accountController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../component/navbar.dart';

class AccountScreen extends GetWidget<AccountController> {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const CustomNavBar(currentIndex: 3),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 185,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: const BoxDecoration(
              color: Color(0xFF00DF71),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 50),
                CircleAvatar(
                  radius: 39,
                  backgroundImage: NetworkImage('https://picsum.photos/200'),
                ),
                SizedBox(height: 8),
                Text(
                  "${controller.userFirstName.value} ${controller.userLastName.value}",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
