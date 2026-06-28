import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class User {
  final int id;
  final String name;
  final String userName;
  User({required this.id, required this.name, required this.userName});
  static User fromJson(Map<String, dynamic> json) {
    const String idKey = 'id';
    const String nameKey = 'name';
    const String userNameKey = 'username';

    assert(json[idKey] is int);
    assert(json[nameKey] is String);
    assert(json[userNameKey] is String);

    int id = json[idKey];
    String name = json[nameKey];
    String userName = json[userNameKey];

    return User(id: id, name: name, userName: userName);
  }

  @override
  String toString() {
    return "ID $id User $name - username= $userName";
  }
}

Future<void> main() async {
  // Create the API URL.
  Uri url = Uri.parse('https://jsonplaceholder.typicode.com/users/1');
  // Send an HTTP GET request.
  Response response = await http.get(url);
  // Check that the status code is 200.
  if (response.statusCode != 200) {
    throw Exception('failed to fetch user');
  }
  // Parses the JSON response.
  Map<String, dynamic> json = jsonDecode(response.body);
  // Create a User object using User.fromJson()
  User user = User.fromJson(json);
  print(user);
}
