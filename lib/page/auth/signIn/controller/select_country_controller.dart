import 'package:get/get.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/countries.dart';

class SelectCountryController extends GetxController {
  final List<Country> allCountries = countryList;
  final List<String> suggestedCountryCodes = ['VN'];

  var selectedCountry = Rxn<Country>();
  var searchQuery = ''.obs;

  List<Country> get filteredCountries => allCountries
      .where((country) =>
      country.name.toLowerCase().contains(searchQuery.value.toLowerCase()))
      .toList();

  List<Country> get suggestedCountries => allCountries
      .where((country) => suggestedCountryCodes.contains(country.isoCode))
      .toList();

  void selectCountry(Country country) {
    selectedCountry.value = country;
  }
}
