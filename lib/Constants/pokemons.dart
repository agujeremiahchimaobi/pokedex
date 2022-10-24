import 'package:flutter/material.dart';
import 'package:pokedex/Constants/constants.dart';

import '../Screens/bulbasaur.dart';

class Pokemon extends StatefulWidget {
  const Pokemon({
    Key? key,
    this.image,
    this.id,
    this.name,
    this.effect,
    this.color,
  }) : super(key: key);

  final String? image;
  final String? id;
  final String? name;
  final String? effect;
  final Color? color;

  @override
  State<Pokemon> createState() => _PokemonState();
}

class _PokemonState extends State<Pokemon> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Bulbasaur(),
          ),
        );
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 190,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    width: MediaQuery.of(context).size.width,
                    color: widget.color,
                    child: Image.asset(widget.image!),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.id!,
                          style: textStyle,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          widget.name!,
                          style: textStyle.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          widget.effect!,
                          style: textStyle.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
