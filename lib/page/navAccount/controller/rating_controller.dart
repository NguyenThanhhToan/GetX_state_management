import 'package:get/get.dart';

import '../../../service/authService.dart';

class RatingController extends GetxController {
  AuthService authService = AuthService();

  final selectedStars = 0.obs;
  final selectedOptions = <String>[].obs;

  late final String source;

  @override
  void onInit() {
    super.onInit();
    source = Get.arguments?['source'] ?? 'unknown';
  }

  bool get isFromService => source == 'service';
  bool get isFromProfile => source == 'profile';

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
    if(isFromService){
      Get.back();
    }
    if(isFromProfile){
      int count = 0;
      Get.until((_) => count++ >= 2);
    }
  }

}
