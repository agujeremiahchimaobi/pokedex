import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokedex/Services/pokemon_model.dart';

class ApiProvider {
  Future<Users> getUsers() async {
    const uri = 'https://pokeapi.co/api/v2/pokemon/';

    final request = await http.get(Uri.parse(uri));

    if (request.statusCode == 200) {
      final body = request.body;
      final users = usersFromJson(body);
      return users;
    } else {
      final req = request.body;
      final error = usersFromJson(req);
      return error;
    }
  }
}

class Apicall {}
