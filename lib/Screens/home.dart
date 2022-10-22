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
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                const AppBarContent(),
                TabBar(
                  indicatorWeight: 3,
                  labelStyle: textStyle.copyWith(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: const Color(0xff3558cd),
                  tabs: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 5,
                      ),
                      child: const Text(
                        'All Pokemons',
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 5,
                      ),
                      child: Row(
                        children: [
                          const Text(
                            'Favourites',
                          ),
                          const SizedBox(width: 5),
                          CircleAvatar(
                            backgroundColor: const Color(0xff3558cd),
                            radius: 10,
                            child: Text(
                              '0',
                              style: textStyle.copyWith(
                                  fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
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
