import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'dart:developer' as developer;
import 'package:http/http.dart' as http;

Future<City_locations> fetchCity() async {
  final String endpointUrl = "https://tequila-api.kiwi.com/locations/query";
  final queryParams = {
    'term': 'london',
    'locale': 'en-US',
    'location_types': 'city',
    'limit': "10",
    'active_only': "true",
    'sort': 'name',
  };

  Map<String, String> headers = {
    'apikey': '54xAsbRz8aw7bKPkVMs3_F_L--eMWU8I',
    'Content-Type': 'application/json; charset=UTF-8'
  };
  Uri queryString = Uri.parse(endpointUrl);
  final finalUri = queryString.replace(queryParameters: queryParams);
  // print(finalUri);
  final response = await http.get(
    finalUri,
    headers: headers,
  );

  final responseJson = City_locations.fromJson(jsonDecode(response.body));
  if (response.statusCode == 200) {
    return responseJson;
  } else {
    throw Exception('Failed to load album');
  }

  // final responseJson = jsonDecode(response.body);
  // print(responseJson);
  //
  // return responseJson;
}

class City_locations {
  final int int_id;
  final String name_airport;
  final City city_locations;

  const City_locations({
    this.int_id,
    this.name_airport,
    this.city_locations,
  });

  factory City_locations.fromJson(Map<String, dynamic> parsedJson) {
    return City_locations(
      int_id: parsedJson['shape_name'],
      name_airport: parsedJson['name'],
      city_locations: City.fromJson(parsedJson['city_locations']),
    );
  }
}

class City {
  final int id;
  final String name;
  final String code;

  const City({
    this.id,
    this.name,
    this.code,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'] as int,
      name: json['name'] as String,
      code: json['code'] as String,
    );
  }
}
