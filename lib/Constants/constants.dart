import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../Screens/bulbasaur.dart';

final textStyle =
    GoogleFonts.notoSans(fontSize: 17, fontWeight: FontWeight.w500);

class Stats extends StatelessWidget {
  const Stats({
    Key? key,
    required this.currentStep,
    required this.text,
    required this.progressColor,
  }) : super(key: key);

  final int currentStep;
  final String text;
  final Color progressColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 13),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: textStyle.copyWith(fontSize: 14),
                ),
                const SizedBox(height: 10),
                LinearProgressBar(
                  progressType: LinearProgressBar.progressTypeLinear,
                  maxSteps: 9,
                  progressColor: progressColor,
                  backgroundColor: Colors.grey.shade300,
                  currentStep: currentStep,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Pokemon extends StatelessWidget {
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
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              width: MediaQuery.of(context).size.width,
              color: color,
              child: Image.asset(image!),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    id!,
                    style: textStyle,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    name!,
                    style: textStyle.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    effect!,
                    style: textStyle.copyWith(fontSize: 14),
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

class AppBarContent extends StatelessWidget {
  const AppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 43),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/logo.png', height: 25),
              const SizedBox(width: 8),
              Text(
                'Pokedex',
                style: textStyle.copyWith(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        const Divider(thickness: 2)
      ],
    );
  }
}
