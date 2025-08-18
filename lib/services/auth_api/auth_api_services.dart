import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taza_bazar/utils/constants/api_constant/api_constant.dart';

class AuthApiServices {

  static Future<void> loginUser(String name, String password) async {
    final url = Uri.parse('${ApiConstant.baseUrl}/auth/login');

    try {
      final response = await http.post(url,
          headers: {'content-type': 'application/json'},
          body: jsonEncode({
            'username': name,
            'password': password
          }));

      if(response.statusCode == 201) {
        final jsonData = jsonDecode(response.body);
        final token = jsonData['token'];

        final SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setString('token', token);
      }
    }catch(e){
      print('login failed');
    }
  }

  static Future<void> logout() async{
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.remove('token');
  }
}