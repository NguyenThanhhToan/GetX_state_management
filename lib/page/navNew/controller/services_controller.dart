import 'package:get/get.dart';

import '../../../data/asset/asset_keys.dart';
import '../../../service/authService.dart';

class ServiceController extends GetxController{
  AuthService authService = Get.find();
  RxString get userFirstName => authService.firstName;
  RxString get userLastName => authService.lastName;
  bool get isLogged => authService.isLogged.value;

  final List<Map<String, String>> mockServices = [
    {'name': 'PARKING METER', 'icon': Assets.serviceItem5},
    {'name': 'COURIER SERVICE', 'icon': Assets.serviceItem4},
    {'name': 'GROCERY DELIVERY', 'icon': Assets.serviceItem3},
    {'name': 'MOVING SERVICE', 'icon': Assets.serviceItem2},
    {'name': 'RIDE SERVICE', 'icon': Assets.serviceItem1},
  ];

}