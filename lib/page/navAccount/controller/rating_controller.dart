import 'package:get/get.dart';

import '../../../service/authService.dart';

class RatingController extends GetxController {
  AuthService authService = AuthService();

  final selectedStars = 0.obs;
  final selectedOptions = <String>[].obs;

  void selectStars(int value) {
    selectedStars.value = value;
  }

  void toggleOption(String label) {
    if (selectedOptions.contains(label)) {
      selectedOptions.remove(label);
    } else {
      selectedOptions.add(label);
    }
  }
  void saveChanges() {
    print('Stars: ${selectedStars.value}');
    print('Options: $selectedOptions');
    Get.back();
  }

}
