import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant/models/food_model.dart';

class FoodTile extends StatelessWidget {
  final FoodModel foodModel;

  const FoodTile({
    super.key,
    required this.foodModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // image
          Image.asset(
            foodModel.imagePath,
            height: 140,
          ),

          // text
          Text(
            foodModel.name,
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 20,
            ),
          ),

          // price + rating
          SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // price
                Text(
                  '\$${foodModel.price}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),

                // rating
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[900],
                    ),
                    const SizedBox(width: 5),
                    Text(
                      foodModel.rating,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
