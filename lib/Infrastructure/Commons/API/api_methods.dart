import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:whetherapp/Infrastructure/Models/temperature_model.dart';

class ApiMethods{
  // https://api.openweathermap.org/data/2.5/weather?lat=21.1702&lon=72.8311&appid=9628b95a2235abb2f18055013ade5de8
  static Future<TemperatureModel?> getRequest( Map<String, dynamic> params) async {
    try {
      // Encode the query parameters
      String queryString = Uri(queryParameters: params).query;

      // Combine the URL with the encoded query parameters
      String requestUrl = 'http://api.weatherstack.com/current?$queryString';

      // Make the GET request
      final response = await http.get(
        Uri.parse(requestUrl),
        headers: {
          'Content-Type': 'application/json', // Specify the content type if needed
          // Add any other headers if needed
        },
      );
print("response:: ${response.body}");
      // Check if the request was successful
      if (response.statusCode == 200) {
        print('GET request successful');
        print('Response: ${response.body}');
        TemperatureModel temperatureModel = TemperatureModel.fromJson(jsonDecode(response.body));
        return temperatureModel;

      } else {
        print('GET request failed with status: ${response.statusCode}');
        print('Response: ${response.body}');
        return null;
      }
    } catch (e) {
      print('Error making GET request: $e');
      return null;
    }
  }
}