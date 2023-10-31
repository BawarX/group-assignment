import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:darnafiz/screens/favorite_screen.dart';
import 'package:darnafiz/screens/user_screen.dart';
import 'package:darnafiz/widget/card.dart';
import 'package:darnafiz/widget/carouse_widget.dart';
import 'package:darnafiz/widget/custom_nav/custom_nav.dart';
import 'package:darnafiz/widget/custom_nav/custom_nav_fav.dart';
import 'package:darnafiz/widget/drawer_button.dart';
import 'package:darnafiz/widget/drawer_side.dart';
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
    double widthSpaceBetweenCards = 10;
    double height = MediaQuery.of(context).size.height;
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
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: height,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Custom_Carousel(),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
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
                        const SizedBox(
                          width: 13,
                        ),
                        custom_card(
                          imgPath: 'assets/chad.jpeg',
                          fullName: 'Bawar ',
                        ),
                        SizedBox(
                          width: widthSpaceBetweenCards,
                        ),
                        custom_card(
                          fullName: 'Bawar Surdash',
                          imgPath: 'assets/guy_smiling_2.jpg',
                        ),
                        SizedBox(
                          width: widthSpaceBetweenCards,
                        ),
                        custom_card(
                          fullName: 'Diary',
                          imgPath: 'assets/guy_smiling.jpeg',
                        ),
                        SizedBox(
                          width: widthSpaceBetweenCards,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: row_spacer(
                    rowHeader: 'New Members',
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: rowCardsHeight,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 13,
                        ),
                        custom_card(
                          fullName: 'Bawar Surdash',
                          imgPath: 'assets/guy_smiling.jpeg',
                        ),
                        SizedBox(
                          width: widthSpaceBetweenCards,
                        ),
                        custom_card(
                          fullName: 'Bawar Surdash',
                          imgPath: 'assets/guy_smiling_2.jpg',
                        ),
                        SizedBox(
                          width: widthSpaceBetweenCards,
                        ),
                        custom_card(
                          fullName: 'Bawar Surdash',
                          imgPath: 'assets/guy_smiling.jpeg',
                        ),
                        SizedBox(
                          width: widthSpaceBetweenCards,
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Color.fromRGBO(238, 238, 238, 1),
                  height: 0.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: row_spacer(
                    rowHeader: 'Popular',
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: rowCardsHeight,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 13,
                        ),
                        custom_card(
                          fullName: 'Bawar Surdash',
                          imgPath: 'assets/guy_smiling_2.jpg',
                        ),
                        SizedBox(
                          width: widthSpaceBetweenCards,
                        ),
                        custom_card(
                          fullName: 'Bawar Surdash',
                          imgPath: 'assets/guy_smiling.jpeg',
                        ),
                        SizedBox(
                          width: widthSpaceBetweenCards,
                        ),
                        custom_card(
                          fullName: 'Bawar Surdash',
                          imgPath: 'assets/guy_smiling.jpeg',
                        ),
                        SizedBox(
                          width: widthSpaceBetweenCards,
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Color.fromRGBO(238, 238, 238, 1),
                  height: 0.5,
                ),
              ],
            ),
          ),
        ),
        drawer: const Drawer(
          child: drawer_side(),
        ),
        floatingActionButton: const custom_nav_bar_ff(),
      ),
    );
  }
}
