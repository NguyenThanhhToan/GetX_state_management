import 'package:flutter/material.dart';

import '../../component/navbar.dart';

class InboxScreen extends StatelessWidget{
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavBar(currentIndex: 2),
    );
  }
}