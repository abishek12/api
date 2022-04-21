import 'dart:convert';
import 'package:api/config.dart';
import 'package:http/http.dart' as http;
import 'model.dart';

class APIService {
//  get location
  Future<WeatherData> fetchData() async {
    WeatherData data;
    var response = await http.get(Uri.parse(Config.url));
    if (response.statusCode == 200) {
      var item = jsonDecode(response.body);
      //last time mistake I didn't pass WeatherData.fromJson()
      // return jsonDecode(response.body); mistake made
      data = WeatherData.fromJson(item);
      return data;
    } else {
      throw Exception("Socket Problem");
    }
  }
}
