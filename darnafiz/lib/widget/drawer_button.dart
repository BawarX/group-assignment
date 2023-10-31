import 'package:flutter/widgets.dart';

class drawer_button extends StatelessWidget {
  drawer_button({
    required this.iconData,
    required this.name,
    super.key,
  });
  String name;
  IconData iconData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          top: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(iconData),
            const SizedBox(
              width: 10,
            ),
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
