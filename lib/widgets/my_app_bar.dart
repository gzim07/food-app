// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/Ellipse 15(2).png")),
                    borderRadius: BorderRadius.circular(45)),
              ),
              SizedBox(
                width: 7,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Deliver To",
                    style: GoogleFonts.poppins(
                        color: Color(0xFF46474B), fontSize: 13),
                  ),
                  Text(
                    "Your Destination ",
                    style: GoogleFonts.poppins(
                        color: Color(0xFF46474B),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Stack(
                  children: [
                    Icon(
                      Icons.notifications,
                      size: 27,
                      color: Color(0xFF93A3B4),
                    ),
                    Positioned(
                        top: 4,
                        right: 3,
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFEC994B)),
                        ))
                  ],
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Icon(
                Icons.menu,
                size: 27,
                color: Color(0xff93A3B4),
              )
            ],
          )
        ],
      ),
    );
  }
}
