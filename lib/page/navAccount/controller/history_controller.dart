import 'package:get/get.dart';
import '../../../model/service.dart';

class HistoryController extends GetxController{

  final List<Service> services = [
    Service(type: 'parking_meter', date: '2025-06-01', fee: '\$10', rating: '4', route: '/parking'),
    Service(type: 'courier_service', date: '2025-06-02', fee: '\$25', rating: 'unrated', route: '/courier'),
    Service(type: 'grocery_delivery', date: '2025-06-03', fee: '\$15', rating: 'dispute', route: '/grocery'),
    Service(type: 'moving_service', date: '2025-06-04', fee: '\$100', rating: '5', route: '/moving'),
    Service(type: 'ride_service', date: '2025-06-05', fee: '\$20', rating: 'unrated', route: '/ride'),
    Service(type: 'parking_meter', date: '2025-06-01', fee: '\$10', rating: '4', route: '/parking'),
    Service(type: 'courier_service', date: '2025-06-02', fee: '\$25', rating: 'unrated', route: '/courier'),
    Service(type: 'grocery_delivery', date: '2025-06-03', fee: '\$15', rating: 'dispute', route: '/grocery'),
    Service(type: 'moving_service', date: '2025-06-04', fee: '\$100', rating: '5', route: '/moving'),
    Service(type: 'ride_service', date: '2025-06-05', fee: '\$20', rating: 'unrated', route: '/ride'),
    Service(type: 'parking_meter', date: '2025-06-01', fee: '\$10', rating: '4', route: '/parking'),
    Service(type: 'courier_service', date: '2025-06-02', fee: '\$25', rating: 'unrated', route: '/courier'),
    Service(type: 'grocery_delivery', date: '2025-06-03', fee: '\$15', rating: 'dispute', route: '/grocery'),
    Service(type: 'moving_service', date: '2025-06-04', fee: '\$100', rating: '5', route: '/moving'),
    Service(type: 'ride_service', date: '2025-06-05', fee: '\$20', rating: 'unrated', route: '/ride'),
  ];
}