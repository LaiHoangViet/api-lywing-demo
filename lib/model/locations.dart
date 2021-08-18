// result là thằng trả về
// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
//
// Future<City> fetchAlbum(int id, String term, int adbc) async {
//
//   Map<dynamic, dynamic> body = {
//     "term": "PRG",
//   }
//   final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
//
//   if (response.statusCode == 200) {
//     // Gán result bằng giá trị của location
//     var result = jsonDecode(response['locations']) as List;
//     // Định dạng kiểu cho result
//     return result.map((element) => City.fromJson(jsonDecode(element['city'])));
//   } else {
//     throw Exception('Failed to load album');
//   }
// }
//
// class City {
//   final int id;
//   final String name;
//   final String code;
//
//   City(this.id, this.name, this.code);
//
//   factory City.fromJson(params)
//       : id = params['id'],
//         name = params['name'],
//         code = params['code'];
// }
//
// class assd extends StatefulWidget {
//   const assd({Key? key}) : super(key: key);
//
//   @override
//   _assdState createState() => _assdState();
// }
//
// class _assdState extends State<assd> {
//
//   City city = City(id, name, code);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:Text(city.),
//     );
//   }
// }
