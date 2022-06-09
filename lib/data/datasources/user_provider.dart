import 'dart:convert';

import 'package:knolink_web/data/models/user.dart';
import 'package:http/http.dart' as http;

class UserProvider {
  final String _testURI = "https://random-data-api.com/api/";

  Future<List<dynamic>> getUsers() async {
    http.Response response =
        await http.get(Uri.parse("${_testURI}users/random_user?size=5"));
    return jsonDecode(response.body);
  }
}
