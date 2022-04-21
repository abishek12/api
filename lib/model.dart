import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class WeatherData {
  final String? location;
  final String? country;

  WeatherData({
    this.location,
    this.country,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
        location: json['location']['name'],
        country: json['location']['country']);
  }

// Map<String, dynamic> toJson() => _$WeatherToJson(this);
}
