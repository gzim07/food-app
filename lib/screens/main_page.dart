// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigation_pages/favorites_screen.dart';
import 'navigation_pages/home_scree.dart';
import 'navigation_pages/profile_screen.dart';
import 'navigation_pages/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List pages = [
    HomeScreen(),
    SearchScreen(),
    FavouritesScreen(),
    ProfileScreen()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          unselectedItemColor: Color(0x6646474B),
          selectedItemColor: Color(0xFFEC994B),
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.suit_heart), label: "Favourites"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: "Profile"),
          ]),
    );
  }
}
