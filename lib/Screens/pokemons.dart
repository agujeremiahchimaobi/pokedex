import 'dart:convert';

import 'package:flutter/material.dart';

import '../Constants/pokemons.dart';
import 'package:http/http.dart' as http;

import '../Services/pokemon_model.dart';

class Pokemons extends StatefulWidget {
  const Pokemons({super.key});

  @override
  State<Pokemons> createState() => _PokemonsState();
}

class _PokemonsState extends State<Pokemons> {
  @override
  void initState() {
    getPeopleData();
    super.initState();
  }

  List<Result>? pokemonList = [];

  Future getPeopleData() async {
    var client = http.Client();
    try {
      var response = await client.get(
        Uri.parse('https://pokeapi.co/api/v2/pokemon/'),
      );
      Map<String, dynamic> decodedResponse =
          jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;

      setState(() {
        List data = decodedResponse['results'] as List;
        for (var element in data) {
          pokemonList!.add(Result.fromJson(element));
        }
      });
    } finally {
      client.close();
    }
  }

  Future getPokemonSubData(String url) async {
    var client = http.Client();
    try {
      var response = await client.get(
        Uri.parse('https://pokeapi.co/api/v2/pokemon/'),
      );
      Map<String, dynamic> decodedResponse =
          jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      setState(() {
        List data = decodedResponse['results'] as List;
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
      backgroundColor: Colors.grey.shade300,
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
              GridView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: pokemonList!.length,
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                itemBuilder: (context, index) {
                  var data = pokemonList![index];

                  return Pokemon(
                    color: const Color(0xfff3f9ef),
                    image: 'images/bulb.png',
                    effect: 'Grass Poison',
                    id: '#001',
                    name: data.name,
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 200,
                  crossAxisCount: 3,
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 5,
                ),
              ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
