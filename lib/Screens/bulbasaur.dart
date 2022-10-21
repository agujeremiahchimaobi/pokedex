import 'package:flutter/material.dart';

import 'package:pokedex/Constants/constants.dart';

class Bulbasaur extends StatefulWidget {
  const Bulbasaur({super.key});

  @override
  State<Bulbasaur> createState() => _BulbasaurState();
}

class _BulbasaurState extends State<Bulbasaur> {
  int currentStep = 2;
  bool markedAsFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.lime.shade50,
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios, size: 20)),
                  const SizedBox(height: 30),
                  Text(
                    'Bulbasaur',
                    style: textStyle.copyWith(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Grass, Poison', style: textStyle),
                          const SizedBox(height: 80),
                          Text('#001', style: textStyle),
                        ],
                      ),
                      const Spacer(),
                      Image.asset('images/bulb.png')
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Height',
                        style: textStyle,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '69',
                        style: textStyle,
                      )
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Weight',
                        style: textStyle,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '7',
                        style: textStyle,
                      )
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BMI',
                        style: textStyle,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '14.7',
                        style: textStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 6,
              color: Colors.grey.shade400,
            ),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Base stats',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Divider(),
                      Stats(
                        currentStep: 2,
                        text: 'Hp 20',
                        progressColor: Color(0xffcd2873),
                      ),
                      Stats(
                        currentStep: 3,
                        text: 'Attack 30',
                        progressColor: Color(0xffcd2873),
                      ),
                      Stats(
                        currentStep: 3,
                        text: 'Defence 30',
                        progressColor: Color(0xffcd2873),
                      ),
                      Stats(
                        currentStep: 4,
                        text: 'Special Attack 40',
                        progressColor: Color(0xffeec218),
                      ),
                      Stats(
                        currentStep: 4,
                        text: 'Special Defence 40',
                        progressColor: Color(0xffeec218),
                      ),
                      Stats(
                        currentStep: 1,
                        text: 'Speed 10',
                        progressColor: Color(0xffcd2873),
                      ),
                      Stats(
                        currentStep: 3,
                        text: 'Avg. Power 30',
                        progressColor: Color(0xffcd2873),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 50,
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          markedAsFav = !markedAsFav;
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: markedAsFav
                            ? const Color(0xff3558cd)
                            : const Color(0xffd5deff),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        markedAsFav
                            ? 'Mark as favourite'
                            : 'Remove from favourite',
                        style: textStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          color: markedAsFav
                              ? Colors.white
                              : const Color(0xff3558cd),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
