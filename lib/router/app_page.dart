import 'package:get/get.dart';
import '../page/auth/signin/add_phone_number.dart';
import '../page/auth/signin/controller/add_phone_number_controller.dart';
import '../page/auth/signin/controller/otp_confirm_controller.dart';
import '../page/auth/signin/otp_confirm.dart';
import '../page/auth/signin/select_country.dart';
import '../page/auth/signin/controller/select_country_controller.dart';
import '../page/auth/signup/controller/sign_up_controller.dart';
import '../page/auth/signup/sign_up_add_name.dart';
import '../page/auth/signup/sign_up_add_payment.dart';
import '../page/auth/signup/sign_up_success.dart';
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
    ),
    GetPage(
      name: AppRoutes.signupAddName,
      page: () => const SignUpFullName(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => SignUpController(), fenix: true);
      }),
    ),
    GetPage(
      name: AppRoutes.signupAddPayment,
      page: () => const SignUpPayment(),
    ),
    GetPage(
      name: AppRoutes.signupSuccess,
      page: () => const SignUpSuccess(),
    ),
    GetPage(
      name: AppRoutes.enableLocation,
      page: () => const EnableLocation(),
    ),
    GetPage(
      name: AppRoutes.turnOnNotification,
      page: () => const TurnOnNotification(),
    )

  ];
}
