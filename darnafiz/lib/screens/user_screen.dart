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
            Container(
              width: double.infinity,
              height: 310,
              color: Colors.white,
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 1,
                        )
                      ],
                    ),
                    height: 220,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/erbil_map.jpg",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned(
                    top: 120,
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 0, 108, 113),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
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
                  ),
                  const Positioned(
                    top: 180,
                    left: 20,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        'assets/guy_smiling.jpeg',
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 45,
                    top: 230,
                    child: Row(
                      children: [
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
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Divider(),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    bottom: 10,
                  ),
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
                      Padding(
                        padding: EdgeInsets.only(right: 13),
                        child: Text('زیاتر ببینە'),
                      ),
                    ],
                  ),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      random_img(),
                      SizedBox(
                        width: 10,
                      ),
                      random_img(),
                      SizedBox(
                        width: 10,
                      ),
                      random_img(),
                      SizedBox(
                        width: 10,
                      ),
                      random_img(),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 5),
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
                  height: 0,
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
                  height: 4,
                ),
                const Divider(),
                const SizedBox(
                  height: 25,
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
              height: 25,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 50,
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
              ),
            ),
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
