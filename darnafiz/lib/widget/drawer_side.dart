import 'package:darnafiz/widget/drawer_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class drawer_side extends StatelessWidget {
  const drawer_side({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
          iconData: Icons.login,
        ),
        const Divider(),
        drawer_button(
          name: 'دەربارەی ئێمە',
          iconData: Icons.add,
        ),
        const Divider(),
        drawer_button(
          name: 'پەیوەندی کردن بە ئیمە',
          iconData: Icons.add,
        ),
        const Divider(),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: 15),
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
          ),
        )
      ],
    );
  }
}
