import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Custom_Carousel extends StatefulWidget {
  const Custom_Carousel({
    super.key,
  });

  @override
  State<Custom_Carousel> createState() => _Custom_CarouselState();
}

class _Custom_CarouselState extends State<Custom_Carousel> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return CarouselSlider(
      options: CarouselOptions(
        onPageChanged: (index, reason) {
          setState(() {
            currentIndex = index;
          });
        },
        autoPlayAnimationDuration: const Duration(
          seconds: 4,
        ),
        autoPlay: true,
        viewportFraction: 1,
        height: 150.0,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(color: Colors.amber),
                  child: Image.asset(
                    'assets/workers.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 170,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                          color: currentIndex == 1 ? Colors.blue : Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      dots(currentIndex: currentIndex),
                      const SizedBox(
                        width: 5,
                      ),
                      dots(currentIndex: currentIndex),
                      const SizedBox(
                        width: 5,
                      ),
                      dots(currentIndex: currentIndex),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      }).toList(),
    );
  }
}

class dots extends StatelessWidget {
  const dots({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 5,
      decoration: BoxDecoration(
        color: currentIndex == 1 ? Colors.blue : Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
