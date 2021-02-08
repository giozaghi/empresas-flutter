import 'dart:convert';

import 'package:empresas_flutter/models/user_model.dart';
import 'package:http/http.dart' as http;

class WebService {
  static Future<UserModel> login(UserModel user) async {
    try {
      final url = "api/users/login";

      final headers = {"Content-Type": "application/json"};
      final body = json.encode(user.toJson());

      final response = await http.post(url, headers: headers, body: body);

      final s = response.body;

      final r = UserModel.fromJson(json.decode(s));

      return r;
    } catch (e) {
    }
  }


}
