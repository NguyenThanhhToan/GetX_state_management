import 'package:get/get.dart';

class AuthService extends GetxService{

  final isLogged = false.obs;
  final firstName = ''.obs;
  final lastName = ''.obs;

  void userFirstName(String value){
    firstName.value = value;
  }
  void userLastName(String value){
    lastName.value = value;
  }
  void changeIsLogged(bool value){
    isLogged.value = value;
  }
}