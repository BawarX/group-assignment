import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class card_favorite extends StatelessWidget {
  const card_favorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          offset: const Offset(0, 0.85),
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 4,
        )
      ]),
      height: 80,
      child: const Card(
        child: Column(
          children: [
            ListTile(
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      'assets/guy_smiling.jpeg',
                    ),
                  ),
                ],
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'ناو: هێمن کامەران هیوا',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'ژمارەی مۆبایل ٠٧٥٠ ٤٤٠٥٤٤٥',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
