import 'package:darnafiz/const/color.dart';
import 'package:darnafiz/screens/home_page.dart';
import 'package:flutter/material.dart';

class custom_nav_bar_ff_favorite extends StatelessWidget {
  const custom_nav_bar_ff_favorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: 400,
          height: 60,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: AppColors.kPrimaryColor,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainPage(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 4,
                        )),
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 0, 108, 113),
                      shape: const CircleBorder(),
                      child: const Icon(
                        Icons.favorite,
                        size: 25,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const Text(
                    "Favorite",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.language,
                    color: Colors.white,
                  ),
                  Text(
                    "NearBy",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.notifications_active,
                    color: Colors.white,
                  ),
                  Text(
                    "Favorite",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
