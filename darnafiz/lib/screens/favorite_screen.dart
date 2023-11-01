import 'package:darnafiz/screens/home_page.dart';

import 'package:darnafiz/widget/favorite_screen/card_favorite.dart';
import 'package:darnafiz/widget/custom_nav/custom_nav_fav.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    List<card_favorite> items = List<card_favorite>.generate(7, (int index) {
      return const card_favorite();
    });
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 108, 113),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainPage(),
                ),
              );
            },
            icon: const Icon(Icons.menu),
            color: Colors.white,
          ),
          title: const Padding(
            padding: EdgeInsets.only(left: 90),
            child: Text(
              "Favorite",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  key: ValueKey<int>(items.length),
                  background: Container(
                    color: Colors.red,
                    child: const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                          Text(
                            'رەشکردن',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  child: const card_favorite(),
                );
              },
            ),
          ),
          const Positioned(
            child: custom_nav_bar_ff_favorite(),
          ),
        ],
      ),
    );
  }
}
