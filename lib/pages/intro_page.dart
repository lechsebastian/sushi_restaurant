import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 94, 38, 34),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Shop name
              const SizedBox(height: 10),
              Text(
                'SUSHI MAN',
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              // icon
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset(
                  'lib/images/salmon_eggs.png',
                ),
              ),
              // title
              const SizedBox(height: 20),
              Text(
                'THE TASTE OF JANAPESE FOOD',
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 44,
                  color: Colors.white,
                ),
              ),
              // subtitle
              const SizedBox(height: 10),
              Text(
                'Feel the taste of the most popular Japanese food from anywhere and anytime',
                style: TextStyle(
                  color: Colors.grey[300],
                  height: 1.5,
                ),
              ),
              // get started button
              const SizedBox(height: 25),
              const MyButton(text: 'Get started'),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
