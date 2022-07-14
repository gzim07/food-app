// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/models/food_model.dart';
import 'package:food_app/screens/details_page.dart';
import 'package:food_app/widgets/food_card.dart';
import 'package:food_app/widgets/my_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25, left: 20, right: 20),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyAppBar(),
              SizedBox(height: 30),
              Text(
                "Lets find your best \nfavorite food!",
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    color: Color(0xFF46474B),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 18,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160,
                  child: Row(children: [
                    Container(
                      width: 160,
                      height: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/image 6.png"))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Special for you",
                              style: GoogleFonts.poppins(
                                  color: Color(0xFFFFFFFF), fontSize: 10),
                            ),
                            Text(
                              'Fried noodles with \nspecial chicken \nkatsu',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Container(
                                height: 21,
                                width: 80,
                                alignment: Alignment.center,
                                child: Text(
                                  "Buy Now",
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 8,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xFF46474B),
                                    borderRadius: BorderRadius.circular(6)))
                          ]),
                    ),
                  ]),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFFD48C4A), Color(0xFFEC994B)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF46474B)),
                  ),
                  Text(
                    "See All",
                    style: GoogleFonts.poppins(
                        decoration: TextDecoration.underline,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFEC994B)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "See the most popular food on order",
                style:
                    GoogleFonts.roboto(fontSize: 12, color: Color(0xFFC5C4CB)),
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 202,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Food.food.length,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                        food: Food.food[index],
                                      )));
                        },
                        child: FoodCard(
                          food: Food.food[index],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 9,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "New Menu",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xFF46474B)),
                ),
                Text(
                  "See All",
                  style: GoogleFonts.poppins(
                      decoration: TextDecoration.underline,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEC994B)),
                ),
              ]),
              SizedBox(
                height: 5,
              ),
              Text(
                "See the most popular food on order",
                style:
                    GoogleFonts.roboto(fontSize: 12, color: Color(0xFFC5C4CB)),
              ),
            ]),
      ),
    );
  }
}
