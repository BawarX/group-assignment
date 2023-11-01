import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class card_favorite extends StatelessWidget {
  const card_favorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 197, 195, 195),
            blurRadius: 4,
            spreadRadius: 1,
            offset: Offset(0, 5),
          )
        ],
        color: Colors.white,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    'assets/guy_smiling.jpeg',
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                    ),
                    Icon(
                      Icons.star_border,
                      size: 15,
                    ),
                    Icon(
                      Icons.star_border,
                      size: 15,
                    ),
                    Icon(
                      Icons.star_border,
                      size: 15,
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'ناو: هێمن کامەران هیوا',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'ژمارەی مۆبایل ٠٧٥٠ ٤٤٠٥٤٤٥',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
