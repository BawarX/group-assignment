import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class row_spacer extends StatelessWidget {
  row_spacer({
    required this.rowHeader,
    super.key,
  });
  String rowHeader;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          rowHeader,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        const Text(
          "More",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
