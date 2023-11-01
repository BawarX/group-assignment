import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class home_card extends StatelessWidget {
  home_card({
    required this.imgPath,
    required this.fullName,
    super.key,
  });
  String imgPath;
  String fullName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 0,
            spreadRadius: 0.5,
          )
        ],
        borderRadius: BorderRadius.circular(19),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 85,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(19),
                topRight: Radius.circular(19),
              ),
              child: Image.asset(
                imgPath,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  fullName,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 18, 118, 123),
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  "Pone Number: 750 454 3445",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  "Occupation: جامچی",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
