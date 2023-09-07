import 'package:flutter/material.dart';

class DataLine extends StatelessWidget {
  const DataLine({super.key, required this.title, required this.detail});

  final String title;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title + ": ",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          detail,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
