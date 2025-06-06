import 'package:example_app/service/authService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../translation/strings.dart';
import 'controller/rating_controller.dart';

class RatingService extends GetView<RatingController> {
  const RatingService({super.key});

  @override
  Widget build(BuildContext context) {
    final t = T(context);
    final AuthService authService = Get.find();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          title: Text(
            t.rateServiceTitle,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Obx(() => Column(
            children: [
              const SizedBox(height: 50),
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://picsum.photos/200'),
              ),
              const SizedBox(height: 10),
              Text(
                "${authService.firstName.value} ${authService.lastName.value}",
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
              ),

              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  final starIndex = index + 1;
                  return IconButton(
                    icon: Icon(
                      controller.selectedStars.value >= starIndex
                          ? Icons.star
                          : Icons.star_border,
                      color: const Color(0xFF00DF71),
                      size: 45,
                    ),
                    onPressed: () => controller.selectStars(starIndex),
                  );
                }),
              ),

              const SizedBox(height: 16),

              if (controller.selectedStars.value > 0) ...[
                _buildCheckbox(t.rateOption1),
                _buildCheckbox(t.rateOption2),
                _buildCheckbox(t.rateOption3),
                _buildCheckbox(t.rateOption4),
              ]
            ],
          )),
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF00DF71),
            minimumSize: const Size.fromHeight(56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: () {
            if (controller.selectedStars.value > 0) {
              controller.saveChanges();
            } else {
              Get.back();
            }
          },
          child: Obx(() => Text(
            controller.selectedStars.value > 0 ? t.confirm : t.skip,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          )),
        ),
      ),
    );
  }

  Widget _buildCheckbox(String label) {
    return Obx(() {
      final isSelected = controller.selectedOptions.contains(label);
      return InkWell(
        onTap: () => controller.toggleOption(label),
        child: Row(
          children: [
            const SizedBox(width: 25),
            Checkbox(
              value: isSelected,
              onChanged: (_) => controller.toggleOption(label),
            ),
            Text(label),
          ],
        ),
      );
    });
  }
}
