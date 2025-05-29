import 'package:get/get.dart';
import '../controller/add_phone_number_controller.dart';
import '../controller/otp_confirm_controller.dart';
import '../page/auth/add_phone_number.dart';
import '../page/auth/otp_confirm.dart';
import '../page/auth/select_country.dart';
import '../controller/select_country_controller.dart';
import 'app_route.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.addPhone,
      page: () => const AddPhoneScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => AddPhoneNumberController());
      }),
    ),
    GetPage(
      name: AppRoutes.selectCountry,
      page: () => const SelectCountryScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => SelectCountryController());
      }),
    ),
    GetPage(
      name: AppRoutes.otpConfirm,
      page: () => const OtpConfirm(),
      binding:  BindingsBuilder(() {
        Get.lazyPut(() => OtpConfirmController());
      }),
    )
  ];
}
