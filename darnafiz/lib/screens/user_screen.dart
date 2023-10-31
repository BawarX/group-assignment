import 'package:darnafiz/screens/home_page.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 240,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/erbil_map.jpg",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                  top: 160,
                  right: 10,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 108, 113),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    height: 30,
                    width: 60,
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 40,
                  child: IconButton(
                    iconSize: 30,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainPage(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Color.fromARGB(255, 0, 108, 113),
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'assets/guy_smiling.jpeg',
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "ناو: هێمن کامەران هیوا",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "ژمارەی مۆبایل: ٠٧٥٩ ١١١١١١",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "پیشە: جامجی",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ئەلبومی کارەکانم',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('زیاتر ببینە'),
                    ],
                  ),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      random_img(),
                      SizedBox(
                        width: 5,
                      ),
                      random_img(),
                      SizedBox(
                        width: 5,
                      ),
                      random_img(),
                      SizedBox(
                        width: 5,
                      ),
                      random_img(),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "دەنگدان",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 0, 108, 113),
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 0, 108, 113),
                    ),
                    Icon(
                      Icons.star_border,
                      color: Color.fromARGB(255, 0, 108, 113),
                    ),
                    Icon(
                      Icons.star_border,
                      color: Color.fromARGB(255, 0, 108, 113),
                    ),
                    Icon(
                      Icons.star_border,
                      color: Color.fromARGB(255, 0, 108, 113),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 100,
                  height: 30,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 108, 113),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      )),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                      Text(
                        'دەنگدان',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.facebook,
                      size: 50,
                      color: Color.fromARGB(255, 0, 108, 113),
                    ),
                    Icon(
                      Icons.tiktok,
                      size: 50,
                      color: Color.fromARGB(255, 0, 108, 113),
                    ),
                    Icon(
                      Icons.class_,
                      size: 50,
                      color: Color.fromARGB(255, 0, 108, 113),
                    ),
                    Icon(
                      Icons.snapchat_rounded,
                      size: 50,
                      color: Color.fromARGB(255, 0, 108, 113),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 20,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 0, 108, 113),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: const Icon(
                  Icons.call,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class random_img extends StatelessWidget {
  const random_img({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        child: Image.asset(
          'assets/eifel.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
