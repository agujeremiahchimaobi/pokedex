import 'dart:convert';
//
import 'package:flutter/material.dart';
import 'package:pokedex/Constants/pokemons.dart';
import 'package:pokedex/Screens/pokemons.dart';
//
import 'Services/api_provider.dart';
import 'Services/pokemon_model.dart';
//
import 'package:http/http.dart' as http;

//
class Testq extends StatefulWidget {
  const Testq({super.key});
//
  @override
  State<Testq> createState() => _TestqState();
}

class _TestqState extends State<Testq> {
  List<Result>? pokemonList = [];

  Future getPokemonSubData(String url) async {
    var client = http.Client();
    try {
      var response = await client.get(
        Uri.parse('https://pokeapi.co/api/v2/pokemon/1'),
      );
      Map<String, dynamic> decodedResponse =
          jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      setState(() {
        List data = decodedResponse['results'];
        for (var element in data) {
          pokemonList!.add(Result.fromJson(element));
        }
      });
    } finally {
      client.close();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (pokemonList == null)
              const Center(
                child: Text(
                  'EMPTY',
                  style: TextStyle(color: Colors.green),
                ),
              )
            else
              ListView.builder(
                shrinkWrap: true,
                itemCount: pokemonList!.length,
                itemBuilder: (context, index) {
                  final data = pokemonList![index];
                  return ListTile(
                    title: Text(data.url!),
                  );
                },
              )
          ],
        ),
      ),
    );
  }

  getPokemonData(element) {}
}
