import 'package:example_app/page/navAccount/widget/history_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../component/navbar.dart';
import '../../translation/strings.dart';
import 'controller/history_controller.dart';

class History extends GetView<HistoryController> {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    final t = T(context);
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const CustomNavBar(currentIndex: 3),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          title: Text(
            t.historyTitle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(flex: 1, child: Center(child: Text(t.historyText1))),
                  Expanded(flex: 2, child: Center(child: Text(t.historyText2))),
                  Expanded(flex: 1, child: Center(child: Text(t.historyText3))),
                  Expanded(flex: 2, child: Center(child: Text(t.historyText4))),
                ],
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.builder(
                  itemCount: controller.services.length,
                  itemBuilder: (context, index) {
                    final s = controller.services[index];
                    return HistoryItem(
                      type: s.type,
                      date: s.date,
                      fee: s.fee,
                      rating: s.rating,
                      route: s.route,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}