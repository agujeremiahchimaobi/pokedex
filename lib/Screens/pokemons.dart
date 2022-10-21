import 'package:flutter/material.dart';
import 'package:pokedex/Constants/constants.dart';

class Pokemons extends StatefulWidget {
  const Pokemons({super.key});

  @override
  State<Pokemons> createState() => _PokemonsState();
}

class _PokemonsState extends State<Pokemons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Container(
        margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              children: const [
                Pokemon(
                  color: Color(0xfff3f9ef),
                  image: 'images/bulb.png',
                  effect: 'Grass Poison',
                  id: '#001',
                  name: 'Bulbasaur',
                ),
                Spacer(),
                Pokemon(
                  color: Color(0xfff3f9ef),
                  image: 'images/ivy.png',
                  effect: 'Grass Poison',
                  id: '#002',
                  name: 'Ivysaur',
                ),
                Spacer(),
                Pokemon(
                  color: Color(0xfff3f9ef),
                  image: 'images/ven.png',
                  effect: 'Grass Poison',
                  id: '#003',
                  name: 'Venusaur',
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: const [
                Pokemon(
                  color: Color(0xfffdf1f1),
                  image: 'images/bul.png',
                  effect: 'Fire',
                  id: '#004',
                  name: 'Bulbasaur',
                ),
                Spacer(),
                Pokemon(
                  color: Color(0xfffdf1f1),
                  image: 'images/char.png',
                  effect: 'Fire',
                  id: '#005',
                  name: 'Charmander',
                ),
                Spacer(),
                Pokemon(
                  color: Color(0xfffdf1f1),
                  image: 'images/charizard.png',
                  effect: 'Fire',
                  id: '#006',
                  name: 'Charizard',
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: const [
                Pokemon(
                  color: Color(0xfff3f9fe),
                  image: 'images/squ.png',
                  effect: 'Water',
                  id: '#007',
                  name: 'Squirtle',
                ),
                Spacer(),
                Pokemon(
                  color: Color(0xfff3f9fe),
                  image: 'images/war.png',
                  effect: 'Water',
                  id: '#008',
                  name: 'Wartortle',
                ),
                Spacer(),
                Pokemon(
                  color: Color(0xfff3f9fe),
                  image: 'images/blas.png',
                  effect: 'Water',
                  id: '#009',
                  name: 'Blastoise',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
