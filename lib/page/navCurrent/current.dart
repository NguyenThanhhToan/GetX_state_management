import 'package:flutter/material.dart';

import '../../component/navbar.dart';

class CurrentScreen extends StatelessWidget{
  const CurrentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavBar(currentIndex: 1),
    );
  }
}