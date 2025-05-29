import 'package:get/get.dart';
import 'package:example_app/mockData/country_data.dart';

class SelectCountryController extends GetxController {

  final List<Map<String, String>> allCountries = countryList;

  var suggestedCountryCodes = ['VN'];

  var selectedCountryCode = ''.obs;
  var searchQuery = ''.obs;

  List<Map<String, String>> get filteredCountries => allCountries
      .where((country) => country['name']!
      .toLowerCase()
      .contains(searchQuery.value.toLowerCase()))
      .toList();

  List<Map<String, String>> get suggestedCountries => allCountries
      .where((country) => suggestedCountryCodes.contains(country['code']))
      .toList();

  void selectCountry(String code) {
    selectedCountryCode.value = code;
  }
}
