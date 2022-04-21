import 'package:api/api_service.dart';
import 'package:api/model.dart';
import 'package:flutter/cupertino.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherData weatherData = WeatherData();

  fetchProviderData() async {
    weatherData = await APIService().fetchData();
    notifyListeners();
  }
}
