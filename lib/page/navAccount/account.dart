import 'package:flutter/material.dart';

import '../../component/navbar.dart';

class AccountScreen extends StatelessWidget{
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavBar(currentIndex: 3),
    );
  }
}