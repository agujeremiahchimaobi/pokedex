import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
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
                    color: Color(0xfffdf1f1),
                    image: 'images/charizard.png',
                    effect: 'Fire',
                    id: '#006',
                    name: 'Charizard',
                  ),
                  SizedBox(width: 15),
                  Pokemon(
                    color: Color(0xfff3f9ef),
                    image: 'images/bulb.png',
                    effect: 'Grass Poison',
                    id: '#001',
                    name: 'Bulbasaur',
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
