import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant/components/button.dart';
import 'package:sushi_restaurant/models/food_model.dart';
import 'package:sushi_restaurant/theme/colors.dart';

import '../components/food_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
// food menu
  List foodMenu = [
    // salmon sushi
    FoodModel(
      name: 'Salmon Sushi',
      price: '21.00',
      imagePath: 'lib/images/salmon_sushi.png',
      rating: '4.9',
    ),

    // tuna
    FoodModel(
      name: 'Tuna',
      price: '23.00',
      imagePath: 'lib/images/tuna.png',
      rating: '4.3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Tokyo',
          style: TextStyle(color: Colors.grey[900]),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // promo baner
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // promo message
                    Text(
                      'Get 32% Promo',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // redeem button
                    MyButton(
                      text: 'Redeem',
                      onTap: () {},
                    ),
                  ],
                ),

                // image
                Image.asset(
                  'lib/images/many_sushi.png',
                  height: 100,
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Search here..',
              ),
            ),
          ),
          const SizedBox(height: 25),

          // menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Food Menu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                foodModel: foodMenu[index],
              ),
            ),
          ),
          const SizedBox(height: 25),

          // popular food
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // image
                Row(
                  children: [
                    Image.asset(
                      'lib/images/salmon_eggs.png',
                      height: 60,
                    ),
                    const SizedBox(width: 20),
                    // name and price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // name
                        Text(
                          'Salmon Eggs',
                          style: GoogleFonts.dmSerifDisplay(),
                        ),

                        const SizedBox(height: 10),

                        //price
                        Text(
                          '\$21.00',
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // heart icon
                const Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
