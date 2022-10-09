import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weathermyapp/models/url_launcher.dart';

class Weatherservices {
  void Weather_details({required String city_name}) async {
    Uri url = Uri.parse(
        "http://api.weatherapi.com/v1/current.json?key=110332a049934985b2f161834221809&q=London&aqi=no");
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
  }
}
