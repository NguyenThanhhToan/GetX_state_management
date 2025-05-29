import 'package:get/get.dart';

class OtpConfirmController extends GetxController{
  var phoneNumber = ''.obs;

  var otp = List.generate(6, (_) => ''.obs);

  String get fullOtp => otp.map((e) => e.value).join();

  @override
  void onInit() {
    super.onInit();
    phoneNumber.value = Get.arguments['phone'];
  }

}