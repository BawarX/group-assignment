import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:darnafiz/screens/favorite_screen.dart';
import 'package:darnafiz/screens/user_screen.dart';
import 'package:darnafiz/widget/card.dart';
import 'package:darnafiz/widget/carouse_widget.dart';
import 'package:darnafiz/widget/custom_nav/custom_nav.dart';
import 'package:darnafiz/widget/drawer_button.dart';
import 'package:darnafiz/widget/row_spacer.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPos = 0;
  double bottomNavBarHeight = 60;

  List<TabItem> tabItems = List.of([
    const TabItem(icon: Icons.home),
  ]);

  @override
  Widget build(BuildContext context) {
    double rowCardsHeight = 160;
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(
            50,
          ),
          child: AppBar(
            backgroundColor: const Color.fromARGB(255, 0, 108, 113),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            leading: Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                );
              },
            ),
            centerTitle: true,
            title: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavoriteScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.location_pin,
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserScreen(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Custom_Carousel(),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: row_spacer(
                    rowHeader: 'Best Of Month',
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: rowCardsHeight,
                    child: Row(
                      children: [
                        custom_card(
                          imgPath: 'assets/chad.jpeg',
                          fullName: 'Bawar ',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        custom_card(
                          fullName: 'Bawar Surdash',
                          imgPath: 'assets/guy_smiling_2.jpg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        custom_card(
                          fullName: 'Diary',
                          imgPath: 'assets/guy_smiling.jpeg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                ),
                row_spacer(
                  rowHeader: 'New Members',
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: rowCardsHeight,
                    child: Row(
                      children: [
                        custom_card(
                          fullName: 'Bawar Surdash',
                          imgPath: 'assets/guy_smiling.jpeg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        custom_card(
                          fullName: 'Bawar Surdash',
                          imgPath: 'assets/guy_smiling_2.jpg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        custom_card(
                          fullName: 'Bawar Surdash',
                          imgPath: 'assets/guy_smiling.jpeg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                ),
                row_spacer(
                  rowHeader: 'Popular',
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: rowCardsHeight,
                    child: Row(
                      children: [
                        custom_card(
                          fullName: 'Bawar Surdash',
                          imgPath: 'assets/guy_smiling_2.jpg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        custom_card(
                          fullName: 'Bawar Surdash',
                          imgPath: 'assets/guy_smiling.jpeg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        custom_card(
                          fullName: 'Bawar Surdash',
                          imgPath: 'assets/guy_smiling.jpeg',
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                color: const Color.fromARGB(255, 0, 108, 113),
                child: const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          'assets/guy_smiling.jpeg',
                        ),
                      ),
                      Text(
                        "ناو: هێمن کامەران هیوا",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        ":زماەەی مۆبایل  ٠٧٥٠٤٤٥٤٥٤٠",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "‌عراق/هەولێر",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              drawer_button(
                name: 'چوونە ژوورەوە',
                iconData: Icons.add,
              ),
              drawer_button(
                name: 'دەربارەی ئێمە',
                iconData: Icons.add,
              ),
              drawer_button(
                name: 'پەیوەندی کردن بە ئیمە',
                iconData: Icons.add,
              ),
              const Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.facebook,
                      size: 60,
                      color: Color.fromARGB(255, 0, 108, 113),
                    ),
                    Icon(
                      Icons.class_,
                      size: 60,
                      color: Color.fromARGB(255, 0, 108, 113),
                    ),
                    Icon(
                      Icons.snapchat_rounded,
                      size: 60,
                      color: Color.fromARGB(255, 0, 108, 113),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: const custom_nav_bar_ff(),
      ),
    );
  }
}
