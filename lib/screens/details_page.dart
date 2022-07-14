// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/food_model.dart';

class DetailsScreen extends StatefulWidget {
  final Food food;
  const DetailsScreen({Key? key, required this.food}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        leading: IconButton(
          splashRadius: 0.1,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF46474B),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Food Detail",
          style: GoogleFonts.poppins(
              fontSize: 20,
              color: Color(0xFF46474B),
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.more_horiz_sharp,
            size: 38,
            color: Color(0xFF46474B),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 15),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(widget.food.image)),
                    borderRadius: BorderRadius.circular(25)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.food.name,
                        style: GoogleFonts.poppins(
                            color: Color(0xFF46474B),
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.food.description,
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFFC7C5C5)),
                      )
                    ],
                  ),
                  Container(
                    width: 78,
                    height: 33,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              splashRadius: 0.1,
                              onPressed: () {
                                setState(() {
                                  if (currentIndex > 0) {
                                    currentIndex--;
                                  }
                                });
                              },
                              icon:
                                  Icon(Icons.remove, color: Color(0xFFFFFFFF))),
                          Text(
                            "$currentIndex",
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w500),
                          ),
                          IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              splashRadius: 0.1,
                              onPressed: () {
                                setState(() {
                                  currentIndex++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: Color(0xFFFFFFFF),
                              ))
                        ]),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(240),
                        color: Color(0xFFEC994B)),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 26,
                        color: Colors.yellowAccent,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        widget.food.rating.toString(),
                        style: GoogleFonts.poppins(
                            color: Color(0xFF46474B), fontSize: 14),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.message_sharp,
                        size: 25,
                        color: Color(0xFFA6A6A6),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.food.reviews.toString() + " Reviews",
                        style: GoogleFonts.poppins(
                            fontSize: 15, color: Color(0xFF46474B)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Detail & Ingredient",
                style: GoogleFonts.poppins(
                    color: Color(0xFF46474B),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                widget.food.detail,
                maxLines: 6,
                softWrap: true,
                style: GoogleFonts.poppins(
                  color: Color(0xFF46474B),
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(children: [
                        Container(
                          height: 3,
                          width: 3,
                          decoration: BoxDecoration(
                              color: Color(0xFF46474B),
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(widget.food.ingredients[0])
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Container(
                          height: 3,
                          width: 3,
                          decoration: BoxDecoration(
                              color: Color(0xFF46474B),
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(widget.food.ingredients[1])
                      ]),
                    ),
                  ],
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        ),
      ),
    );
  }
}
