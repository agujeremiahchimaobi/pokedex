import 'package:flutter/material.dart';
import 'package:pokedex/Constants/constants.dart';
import 'package:pokedex/Screens/favourites.dart';
import 'package:pokedex/Screens/pokemons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xffe8e8e8),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: const Color(0xff3558cd),
            tabs: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Text(
                  'All Pokemons',
                  style: textStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  children: [
                    Text(
                      'Favourites',
                      style: textStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(width: 5),
                    const CircleAvatar(
                      backgroundColor: Color(0xff3558cd),
                      radius: 10,
                      child: Text('2'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo.png', height: 25),
              const SizedBox(width: 8),
              Text('Pokedex',
                  style: textStyle.copyWith(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  )),
            ],
          ),
        ),
        body: const TabBarView(
          clipBehavior: Clip.none,
          children: [
            Pokemons(),
            Favourites(),
          ],
        ),
      ),
    );
  }
}
