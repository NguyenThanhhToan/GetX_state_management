import 'package:example_app/service/authService.dart';
import 'package:get/get.dart';

class AccountController extends GetxController{
  var isLoading = true.obs;
  AuthService authService = Get.find();
  RxString get userFirstName => authService.firstName;
  RxString get userLastName => authService.lastName;

}