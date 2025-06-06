import 'package:get/get.dart';

class AuthService extends GetxService{

  final isLogged = false.obs;
  final firstName = ''.obs;
  final lastName = ''.obs;
  final phoneNumber = ''.obs;
  final password = ''.obs;
  final email = ''.obs;
  final cardNumber = ''.obs;
  final cardName = ''.obs;
  final cardCvv = ''.obs;
  final cardDate = ''.obs;

  void userPhoneNumber(String value){
    phoneNumber.value = value;
  }
  void userCardName(String value){
    cardName.value = value;
  }
  void userCardDate(String value){
    cardDate.value = value;
  }
  void userCardNumber(String value){
    cardNumber.value = value;
  }
  void userCardCvv(String value){
    cardCvv.value = value;
  }
  void userEmail(String value){
    email.value = value;
  }
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