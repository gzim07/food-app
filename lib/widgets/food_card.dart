// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/models/food_model.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCard extends StatelessWidget {
  final Food food;
  const FoodCard({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 128,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(food.image.toString())),
                  borderRadius: BorderRadius.circular(14)),
            ),
          ),
          Positioned(
            top: 128,
            left: 0,
            right: 0,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 10, right: 9, left: 8),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      food.name.toString(),
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF46474B)),
                    ),
                    Text(
                      food.description.toString(),
                      style: GoogleFonts.poppins(
                          fontSize: 10, color: Color(0xFFC7C5C5)),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ ${food.price}",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF46474B)),
                        ),
                        Container(
                          height: 28,
                          width: 28,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xFFEC994B),
                              borderRadius: BorderRadius.circular(28)),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ]),
            ),
          )
        ],
      ),
      margin: EdgeInsets.only(right: 5),
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.width - 2,
      decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(
                color: Color(0xDD46474B), blurRadius: 0.5, spreadRadius: 0.1)
          ],
          borderRadius: BorderRadius.circular(14)),
    );
  }
}
