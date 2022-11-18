import 'dart:io';
import 'package:http/http.dart' as http;

class UserServices {     
  
  static Future<String> getUsers() async {
    try {
      var response = await http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon/6"));
      return response.body;
    
    } catch (e) {
      return "";
    }
  }}