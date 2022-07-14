// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/screens/main_page.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 30),
        child: Container(
          child: Stack(
            children: [
              Positioned(
                  top: 20,
                  left: 30,
                  child: Container(
                    height: 320,
                    width: 290,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(180),
                        topRight: Radius.circular(180),
                      ),
                      color: Color(0xffEC994B),
                    ),
                  )),
              Positioned(
                  top: 5,
                  left: 30,
                  child: Container(
                    padding: EdgeInsets.all(7),
                    width: 120,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFFD9D9D9),
                          backgroundImage:
                              AssetImage("assets/Mask group(1).png"),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "John Smith",
                              style: GoogleFonts.montserrat(
                                  color: Color(0xFF222224),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Courier Faster",
                              style: GoogleFonts.montserrat(
                                color: Color(0xFF222224),
                                fontSize: 8,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
              Positioned(
                  top: 5,
                  right: 20,
                  child: Container(
                    padding: EdgeInsets.all(7),
                    width: 100,
                    height: 45,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/Ellipse 9(1).png"),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Review",
                              style: GoogleFonts.montserrat(
                                  fontSize: 8, color: Color(0xFFCECECE)),
                            ),
                            Text(
                              "160K+",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: Color(0xFF000000)),
                            )
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                  )),
              Positioned(
                  left: 8,
                  top: 90,
                  child: Transform.rotate(
                    angle: -0.30,
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      child: SvgPicture.asset(
                        "assets/time-svgrepo-com.svg",
                        height: 30,
                        width: 30,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(0xFFEC994B)),
                    ),
                  )),
              Positioned(
                  right: 5,
                  top: 70,
                  child: Transform.rotate(
                    angle: 0.40,
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(44),
                            color: Color(0xFFEC994B)),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/truck-svgrepo-com.svg",
                            height: 22,
                            width: 22,
                            color: Color(0xFFFFFFFF),
                          ),
                        )),
                  )),
              Positioned(
                top: 100,
                left: 60,
                child: Container(
                  height: 52,
                  width: 52,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(50)),
                  child: Transform.rotate(
                    angle: -0.30,
                    child: Text(
                      "LUNCH TIME",
                      maxLines: 1,
                      style: GoogleFonts.montserrat(
                          color: Color(0xFFEC994B),
                          fontSize: 7,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 130,
                  right: 50,
                  child: Container(
                    height: 19,
                    width: 19,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(19)),
                  )),
              Positioned(
                  top: 80,
                  left: 10,
                  right: 20,
                  child: Container(
                    height: 260,
                    width: 270,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/icons8-team-NtwdMDylfTw-unsplash-removebg-preview.png")),
                    ),
                  )),
              Positioned(
                  top: 320,
                  left: 70,
                  child: Container(
                    width: 200,
                    height: 42,
                    padding: EdgeInsets.only(left: 15),
                    child: Row(children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/Ellipse 12.png"))),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "\“When you are to lazy for cook, \njust click and they will come quickly\”",
                        style: GoogleFonts.poppins(
                            color: Color(0xFF9F9F9F),
                            fontSize: 8,
                            fontWeight: FontWeight.w500),
                      )
                    ]),
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(35)),
                  )),
              Positioned(
                top: 380,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Text("Dont Wanna Make \n You Have a Bad Day",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontSize: 26,
                              color: Color(0xFF46474B),
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                          "Our job is delivering a delicious food \n with fast , free delivery and easy.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              fontSize: 14, color: Color(0xFF797979797979))),
                      Spacer(),
                      RawMaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainScreen()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Get Started",
                            style: GoogleFonts.montserrat(
                                color: Color(0xFFFFFFFF),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFEC994B),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
