import 'package:example_app/page/navNew/widget/service_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../component/navbar.dart';
import '../../translation/strings.dart';
import 'controller/services_controller.dart';

class ServiceScreen extends GetWidget<ServiceController> {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = T(context);

    Widget serviceWidget;
    if (controller.mockServices.length == 4) {
      serviceWidget = Column(
        children: controller.mockServices
            .map((service) => ServiceItem4(
          serviceName: service['name']!,
          icon: service['icon']!,
        ))
            .toList(),
      );
    }
    else if (controller.mockServices.length <= 3){
      serviceWidget = Column(
        children: controller.mockServices
          .map((service) => ServiceItem3(
          serviceName: service['name']!,
          icon: service['icon']!,
        ))
            .toList(),
      );
    }else {
      serviceWidget = GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: controller.mockServices.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing:20,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (context, index) {
          final service = controller.mockServices[index];
          return ServiceItem5(
            serviceName: service['name']!,
            icon: service['icon']!,
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() => RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "${t.goodMor}, ",
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: controller.userLastName.value,
                        style: const TextStyle(
                          fontSize: 22,
                          color: Color(0xFF00DF71),
                        ),
                      ),
                    ],
                  ),
                )),
                const SizedBox(height: 20),
                Text(
                  t.serviceText1,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                serviceWidget,
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavBar(currentIndex: 0),
    );
  }
}
