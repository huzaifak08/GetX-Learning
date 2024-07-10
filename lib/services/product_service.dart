import 'dart:convert';

import 'package:http/http.dart' as http;

class ProductService {
  Future<List<Map<String, dynamic>>> getAllProductsService() async {
    final response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));

    final responseData = jsonDecode(response.body);

    if (response.statusCode == 200) {
      List<Map<String, dynamic>> data = List.from(responseData);

      return data;
    } else {
      return throw Exception("Error exception");
    }
  }
}
