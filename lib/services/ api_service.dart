import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/cat_model.dart';

class ApiService {
  Future<List<CatModel>> fetchCatBreeds() async {
    try {
      final response =
          await http.get(Uri.parse('https://api.thecatapi.com/v1/breeds'));

      if (response.statusCode == 200) {
        final List data = json.decode(response.body);
        return data.map((json) => CatModel.fromJson(json)).toList();
      } else {
        throw Exception('Error statusCode ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error $e');
    }
  }
}
